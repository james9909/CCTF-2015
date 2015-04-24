// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.hockeyapp.android.utils;

import java.util.ArrayList;
import net.hockeyapp.android.objects.Feedback;
import net.hockeyapp.android.objects.FeedbackMessage;
import net.hockeyapp.android.objects.FeedbackResponse;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class FeedbackParser
{
    static class FeedbackParserHolder
    {

        public static final FeedbackParser a = new FeedbackParser();


        private FeedbackParserHolder()
        {
        }
    }


    private FeedbackParser()
    {
    }


    public static FeedbackParser a()
    {
        return FeedbackParserHolder.a;
    }

    public FeedbackResponse a(String s)
    {
        if (s == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject;
        JSONObject jsonobject1;
        Feedback feedback;
        JSONArray jsonarray;
        int i;
        jsonobject = new JSONObject(s);
        jsonobject1 = jsonobject.getJSONObject("feedback");
        feedback = new Feedback();
        jsonarray = jsonobject1.getJSONArray("messages");
        i = jsonarray.length();
        ArrayList arraylist = null;
        if (i <= 0) goto _L4; else goto _L3
_L3:
        arraylist = new ArrayList();
        int j = 0;
_L5:
        if (j >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        String s1 = jsonarray.getJSONObject(j).getString("subject").toString();
        String s2 = jsonarray.getJSONObject(j).getString("text").toString();
        String s3 = jsonarray.getJSONObject(j).getString("oem").toString();
        String s4 = jsonarray.getJSONObject(j).getString("model").toString();
        String s5 = jsonarray.getJSONObject(j).getString("os_version").toString();
        String s6 = jsonarray.getJSONObject(j).getString("created_at").toString();
        int k = jsonarray.getJSONObject(j).getInt("id");
        String s7 = jsonarray.getJSONObject(j).getString("token").toString();
        int l = jsonarray.getJSONObject(j).getInt("via");
        String s8 = jsonarray.getJSONObject(j).getString("user_string").toString();
        String s9 = jsonarray.getJSONObject(j).getString("clean_text").toString();
        String s10 = jsonarray.getJSONObject(j).getString("name").toString();
        String s11 = jsonarray.getJSONObject(j).getString("app_id").toString();
        FeedbackMessage feedbackmessage = new FeedbackMessage();
        feedbackmessage.k(s11);
        feedbackmessage.i(s9);
        feedbackmessage.f(s6);
        feedbackmessage.a(k);
        feedbackmessage.d(s4);
        feedbackmessage.j(s10);
        feedbackmessage.c(s3);
        feedbackmessage.e(s5);
        feedbackmessage.a(s1);
        feedbackmessage.b(s2);
        feedbackmessage.g(s7);
        feedbackmessage.h(s8);
        feedbackmessage.b(l);
        arraylist.add(feedbackmessage);
        j++;
        if (true) goto _L5; else goto _L4
_L4:
        feedback.a(arraylist);
        feedback.a(jsonobject1.getString("name").toString());
_L6:
        feedback.b(jsonobject1.getString("email").toString());
_L7:
        feedback.a(jsonobject1.getInt("id"));
_L8:
        feedback.c(jsonobject1.getString("created_at").toString());
_L9:
        FeedbackResponse feedbackresponse = new FeedbackResponse();
        feedbackresponse.a(feedback);
        feedbackresponse.a(jsonobject.getString("status").toString());
_L10:
        feedbackresponse.b(jsonobject.getString("token").toString());
        return feedbackresponse;
        JSONException jsonexception2;
        jsonexception2;
        jsonexception2.printStackTrace();
          goto _L6
        JSONException jsonexception;
        jsonexception;
        JSONException jsonexception1;
        feedbackresponse = null;
        jsonexception1 = jsonexception;
_L11:
        jsonexception1.printStackTrace();
        return feedbackresponse;
        JSONException jsonexception3;
        jsonexception3;
        jsonexception3.printStackTrace();
          goto _L7
        JSONException jsonexception4;
        jsonexception4;
        jsonexception4.printStackTrace();
          goto _L8
        JSONException jsonexception5;
        jsonexception5;
        jsonexception5.printStackTrace();
          goto _L9
        JSONException jsonexception6;
        jsonexception6;
        jsonexception6.printStackTrace();
          goto _L10
        JSONException jsonexception7;
        jsonexception7;
        jsonexception7.printStackTrace();
        return feedbackresponse;
_L2:
        return null;
        jsonexception1;
          goto _L11
    }
}
