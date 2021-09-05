package com.maknolja.web.view;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.AbstractView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.Map;

@Component
public class JsonView extends AbstractView {
    Gson gson;

    public JsonView() {
        GsonBuilder builder = new GsonBuilder();
        gson = builder.create();
    }

    @Override
    protected void renderMergedOutputModel(Map<String, Object> model,
                                           HttpServletRequest request,
                                           HttpServletResponse response) throws Exception {
        Object data = model.get("data");
        String jsonText =gson.toJson(data);
        response.setContentType("application/json; charset=utf-8");

        PrintWriter out = response.getWriter();

        out.write(jsonText);
        out.flush();
        out.close();
    }
}
