package com.bo.bgkb;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;

@Controller
@RequestMapping("/bgkb")
public class BgkbController {
    protected final Logger logger = LoggerFactory.getLogger(getClass());

    @RequestMapping(value="/api", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject bgkb() {
        logger.info("----------------------PUBG API Start----------------------");
        String service = "steam";
        String userId = "";
        String key = "";

        String url = "https://api.pubg.com/shards/" + service + "/players?filter[playerNames]=" + userId;

        HttpClient httpClient = HttpClients.createDefault();

        HttpGet httpGet = new HttpGet(url);

        httpGet.setHeader("Authorization", key);
        httpGet.setHeader("Accept", "application/json");

        JSONObject jsonResponse = null;
        try {
            HttpResponse response = httpClient.execute(httpGet);
            HttpEntity entity = response.getEntity();
            logger.info("status : " + response.getStatusLine().getStatusCode());
            // Check if response is successful (status code 200)
            if (response.getStatusLine().getStatusCode() == 200) {
                // Print response body
                String responseBody = EntityUtils.toString(entity);
                jsonResponse = new JSONObject(responseBody);

                // Now you can work with the JSON object
                System.out.println(jsonResponse.toString());
            } else {
                // Handle unsuccessful response
                logger.error("Failed to fetch data from PUBG API: " + response.getStatusLine().getStatusCode());
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return jsonResponse;
    }
}
