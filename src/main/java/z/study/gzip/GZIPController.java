package z.study.gzip;

import java.io.BufferedReader;
import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 后台请求正文解压演示controller
 */
@Controller
public class GZIPController {

    /**
     * gzip 后台解压方法
     */
    @ResponseBody
    @RequestMapping(value = "/gzip")
    public String gzip(HttpServletRequest request) {
        String params = "";
        try {
            //获取 Content-Encoding 请求头
            String contentEncoding = request.getHeader("Content-Encoding");
            if (contentEncoding != null && contentEncoding.equals("gzip")) {
                //获取输入流
                BufferedReader reader = request.getReader();
                //将输入流中的请求实体转换为byte数组,进行gzip解压
                byte[] bytes = IOUtils.toByteArray(reader, "iso-8859-1");
                //对 bytes 数组进行解压
                params = GZIPUtil.uncompress(bytes);
            } else {
                BufferedReader reader = request.getReader();
                params = IOUtils.toString(reader);
            }
            if (params != null && params.trim().length() > 0) {
                //因为前台对参数进行了 url 编码,在此进行解码
                params = URLDecoder.decode(params, "utf-8");
                //将解码后的参数转换为 json 对象
                JSONObject json = JSONObject.fromObject(params);
                //从 json 对象中获取参数进行后续操作
                System.out.println("title:\t" + json.getString("title"));
                System.out.println("content:\t" + json.getString("content"));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return params;
    }
}
