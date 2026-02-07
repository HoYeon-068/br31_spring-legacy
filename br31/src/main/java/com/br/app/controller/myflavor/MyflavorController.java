package com.br.app.controller.myflavor;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.Shape;
import java.awt.geom.Ellipse2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.InputStream;
import java.net.URLDecoder;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ThreadLocalRandom;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.br.app.domain.myflavor.FlavorDTO;
import com.br.app.domain.myflavor.MyFlavorCatalog;
import com.br.app.domain.myflavor.MyFlavorResultDTO;

@Controller
@RequestMapping("/play/myflavor")
public class MyflavorController {

    @GetMapping("/list.do")
    public String list() {
        return "play.myflavor.list";
    }

    @GetMapping("/register.do")
    public String registerForm() {
        return "play.myflavor.register";
    }

    @PostMapping("/register.do")
    public String register(
            Principal principal,
            HttpServletRequest request,
            @RequestParam String size,
            @RequestParam String title,
            @RequestParam(name="productSeq") String[] productSeq
    ) throws Exception {

        if (principal == null) {
            return "redirect:/login/login.do";
        }

        String userId = principal.getName();

        int seq = ThreadLocalRandom.current().nextInt(1000, 9999);

        List<FlavorDTO> flavors = new ArrayList<>();
        for (String id : productSeq) {
            FlavorDTO f = MyFlavorCatalog.find(id);
            if (f != null) flavors.add(f);
        }

        MyFlavorResultDTO dto = new MyFlavorResultDTO(
                seq,
                size,
                title,
                null,
                userId,
                flavors
        );

        request.getSession(true).setAttribute("MYFLAVOR_" + seq, dto);

        return "redirect:/play/myflavor/register-complete.do?seq=" + seq + "&register=Y";
    }

    @GetMapping("/register-complete.do")
    public String registerComplete(@RequestParam String seq, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("MYFLAVOR_" + seq) == null) {
            return "redirect:/play/myflavor/list.do";
        }
        return "play.myflavor.register-complete";
    }

    // ================== 이미지 생성 ==================
    private static final int W = 700;
    private static final int H = 700;
    private static final int CIRCLE = 140;
    private static final int NAME_GAP_Y = 30;
    private static final int ROW_GAP_Y = 85;

    @GetMapping("/image.do")
    public void image(@RequestParam String seq, HttpServletRequest req, javax.servlet.http.HttpServletResponse resp) throws Exception {

        HttpSession session = req.getSession(false);
        if (session == null) {
            resp.sendError(404);
            return;
        }

        Object obj = session.getAttribute("MYFLAVOR_" + seq);
        if (!(obj instanceof MyFlavorResultDTO)) {
            resp.sendError(404);
            return;
        }

        MyFlavorResultDTO dto = (MyFlavorResultDTO) obj;

        List<FlavorDTO> flavors = dto.getFlavors() == null ? new ArrayList<>() : dto.getFlavors();
        int count = Math.min(6, flavors.size());

        BufferedImage canvas = new BufferedImage(W, H, BufferedImage.TYPE_INT_ARGB);
        Graphics2D g = canvas.createGraphics();

        g.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        g.setRenderingHint(RenderingHints.KEY_TEXT_ANTIALIASING, RenderingHints.VALUE_TEXT_ANTIALIAS_ON);
        g.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);

        g.setColor(Color.WHITE);
        g.fillRect(0, 0, W, H);

        g.setFont(new Font("SansSerif", Font.BOLD, 22));
        g.setColor(new Color(60, 60, 60));
        g.drawString("마이 플레이버 리스트", 40, 55);

        g.setFont(new Font("SansSerif", Font.BOLD, 22));
        g.setColor(new Color(255, 110, 140));
        g.drawString(sizeLabelKorean(dto.getSize(), count), 250, 55);

        g.setFont(new Font("SansSerif", Font.BOLD, 56));
        g.setColor(Color.BLACK);
        drawCenteredTextMaxLines(g, safe(dto.getTitle()), W / 2, 125, 620, 1);

        g.setColor(new Color(225, 225, 225));
        float[] dash = { 6f };
        g.setStroke(new BasicStroke(1f, BasicStroke.CAP_BUTT, BasicStroke.JOIN_BEVEL, 1f, dash, 0));
        g.drawLine(40, 180, W - 40, 180);

        int startY = (count <= 4) ? 285 : 255;

        if (count == 0) {
            g.setFont(new Font("SansSerif", Font.PLAIN, 18));
            g.setColor(new Color(160, 160, 160));
            drawCenteredText(g, "선택된 플레이버가 없습니다.", W / 2, 360);
        } else if (count <= 4) {
            drawRow(g, req, flavors.subList(0, count), startY, count, gapXForCols(count));
        } else if (count == 5) {
            drawRow(g, req, flavors.subList(0, 3), startY, 3, gapXForCols(3));
            drawRow(g, req, flavors.subList(3, 5), startY + CIRCLE + ROW_GAP_Y, 2, gapXForCols(2));
        } else {
            drawRow(g, req, flavors.subList(0, 3), startY, 3, gapXForCols(3));
            drawRow(g, req, flavors.subList(3, 6), startY + CIRCLE + ROW_GAP_Y, 3, gapXForCols(3));
        }

        g.setFont(new Font("SansSerif", Font.BOLD, 18));
        g.setColor(new Color(130, 130, 130));
        g.drawString("By " + maskWriter(dto.getWriter()), W - 180, 520);

        g.dispose();

        resp.setContentType("image/png");
        resp.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        resp.setHeader("Pragma", "no-cache");

        try (ServletOutputStream os = resp.getOutputStream()) {
            ImageIO.write(canvas, "png", os);
            os.flush();
        }
    }

    private static void drawRow(Graphics2D g, HttpServletRequest req, List<FlavorDTO> row, int y, int cols, int gapX) {
        int totalW = cols * CIRCLE + (cols - 1) * gapX;
        int startX = (W - totalW) / 2;

        for (int i = 0; i < row.size(); i++) {
            int x = startX + i * (CIRCLE + gapX);

            FlavorDTO f = row.get(i);

            drawCircleImage(g, req, f.getImgPath(), x, y, CIRCLE);

            g.setFont(new Font("SansSerif", Font.BOLD, 18));
            g.setColor(Color.BLACK);
            int textY = y + CIRCLE + NAME_GAP_Y;
            drawCenteredTextMaxLines(g, safe(f.getName()), x + CIRCLE / 2, textY, CIRCLE + 30, 2);
        }
    }

    private static int gapXForCols(int cols) {
        if (cols == 2) return 90;
        if (cols == 3) return 40;
        if (cols == 4) return 18;
        return 40;
    }

    private static void drawCircleImage(Graphics2D g, HttpServletRequest req, String imgPath, int x, int y, int size) {
        BufferedImage img = loadLocalImage(req, imgPath);

        g.setColor(Color.WHITE);
        g.fillOval(x - 6, y - 6, size + 12, size + 12);

        Shape oldClip = g.getClip();
        Ellipse2D circle = new Ellipse2D.Double(x, y, size, size);
        g.setClip(circle);

        if (img != null) g.drawImage(img, x, y, size, size, null);
        else {
            g.setColor(new Color(230, 230, 230));
            g.fillRect(x, y, size, size);
            g.setColor(new Color(170, 170, 170));
            g.setFont(new Font("SansSerif", Font.PLAIN, 14));
            g.drawString("NO IMG", x + 35, y + size / 2);
        }

        g.setClip(oldClip);

        g.setColor(new Color(220, 220, 220));
        g.setStroke(new BasicStroke(2f));
        g.draw(circle);
    }

    private static BufferedImage loadLocalImage(HttpServletRequest req, String imgPath) {
        if (imgPath == null || imgPath.isBlank()) return null;
        try {
            String decoded = URLDecoder.decode(imgPath, "UTF-8");
            String realPath = req.getServletContext().getRealPath(decoded);
            if (realPath != null) {
                File f = new File(realPath);
                if (f.exists()) return ImageIO.read(f);
            }
            try (InputStream is = req.getServletContext().getResourceAsStream(decoded)) {
                if (is != null) return ImageIO.read(is);
            }
        } catch (Exception ignore) {}
        return null;
    }

    private static void drawCenteredText(Graphics2D g, String text, int centerX, int baselineY) {
        if (text == null) text = "";
        FontMetrics fm = g.getFontMetrics();
        int w = fm.stringWidth(text);
        g.drawString(text, centerX - (w / 2), baselineY);
    }

    private static void drawCenteredTextMaxLines(Graphics2D g, String text, int centerX, int baselineY, int maxWidth, int maxLines) {
        if (text == null) text = "";
        FontMetrics fm = g.getFontMetrics();

        List<String> lines = wrapByChars(fm, text, maxWidth, maxLines);
        int lineHeight = fm.getHeight();

        int firstBaseline = baselineY;
        if (lines.size() == 2) firstBaseline = baselineY - (lineHeight / 2) + 2;

        for (int i = 0; i < lines.size(); i++) {
            String line = lines.get(i);
            int w = fm.stringWidth(line);
            g.drawString(line, centerX - (w / 2), firstBaseline + (i * lineHeight));
        }
    }

    private static List<String> wrapByChars(FontMetrics fm, String text, int maxWidth, int maxLines) {
        List<String> out = new ArrayList<>();
        if (text.isBlank()) { out.add(""); return out; }

        String remaining = text;

        for (int line = 0; line < maxLines; line++) {
            if (remaining.isEmpty()) break;
            boolean lastLine = (line == maxLines - 1);

            String built = "";
            int idx = 0;
            while (idx < remaining.length()) {
                String next = built + remaining.charAt(idx);
                if (fm.stringWidth(next) > maxWidth) break;
                built = next;
                idx++;
            }
            if (built.isEmpty()) { built = remaining.substring(0, 1); idx = 1; }

            remaining = remaining.substring(idx);

            if (lastLine && !remaining.isEmpty()) {
                built = ellipsis(fm, built, maxWidth);
                remaining = "";
            }
            out.add(built.trim());
        }

        if (out.isEmpty()) out.add(ellipsis(fm, text, maxWidth));
        return out;
    }

    private static String ellipsis(FontMetrics fm, String text, int maxWidth) {
        if (text == null) return "";
        if (fm.stringWidth(text) <= maxWidth) return text;

        String suffix = "...";
        int suffixW = fm.stringWidth(suffix);

        String t = text;
        while (t.length() > 0 && fm.stringWidth(t) + suffixW > maxWidth) {
            t = t.substring(0, t.length() - 1);
        }
        return t + suffix;
    }

    private static String sizeLabelKorean(String size, int countFallback) {
        if (size == null || size.isBlank()) return countFallback + "가지 맛";
        switch (size) {
            case "A": return "3가지 맛(파인트)";
            case "B": return "4가지 맛(쿼터)";
            case "C": return "5가지 맛(패밀리)";
            case "D": return "6가지 맛(하프갤런)";
            default:  return countFallback + "가지 맛";
        }
    }

    private static String maskWriter(String writer) {
        if (writer == null || writer.isBlank()) return "hac****";
        if (writer.length() <= 2) return writer + "****";
        return writer.substring(0, Math.min(3, writer.length())) + "****";
    }

    private static String safe(String s) { return s == null ? "" : s; }
}
