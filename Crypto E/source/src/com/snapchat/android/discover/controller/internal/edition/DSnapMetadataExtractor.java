// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.discover.controller.internal.edition;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.Timber;
import com.snapchat.android.util.network.CloseableUtils;
import com.snapchat.data.gson.rich_story.RichStoryMetadataResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

public class DSnapMetadataExtractor
{

    private final Gson a;

    public DSnapMetadataExtractor()
    {
        this(new Gson());
    }

    protected DSnapMetadataExtractor(Gson gson)
    {
        a = gson;
    }

    public RichStoryMetadataResponse a(String s)
    {
        File file;
        file = new File((new StringBuilder()).append(s).append("/").append("metadata.json").toString());
        if (!file.exists())
        {
            return null;
        }
        FileInputStream fileinputstream = new FileInputStream(file);
        RichStoryMetadataResponse richstorymetadataresponse = (RichStoryMetadataResponse)a.fromJson(new InputStreamReader(fileinputstream), com/snapchat/data/gson/rich_story/RichStoryMetadataResponse);
        CloseableUtils.a(fileinputstream);
_L1:
        return richstorymetadataresponse;
        JsonIOException jsonioexception1;
        jsonioexception1;
        FileInputStream fileinputstream1 = null;
_L5:
        fileinputstream = fileinputstream1;
_L4:
        Timber.e("DSnapMetadataExtractor", "Failed to load metadata from %s", new Object[] {
            s
        });
        CloseableUtils.a(fileinputstream);
        richstorymetadataresponse = null;
          goto _L1
        Exception exception;
        exception;
        fileinputstream = null;
_L3:
        CloseableUtils.a(fileinputstream);
        throw exception;
        exception;
        if (true) goto _L3; else goto _L2
_L2:
        JsonSyntaxException jsonsyntaxexception1;
        jsonsyntaxexception1;
        fileinputstream = null;
          goto _L4
        JsonSyntaxException jsonsyntaxexception;
        jsonsyntaxexception;
          goto _L4
        IOException ioexception1;
        ioexception1;
        fileinputstream = null;
          goto _L4
        IOException ioexception;
        ioexception;
          goto _L4
        AssertionError assertionerror1;
        assertionerror1;
        fileinputstream = null;
          goto _L4
        AssertionError assertionerror;
        assertionerror;
          goto _L4
        JsonIOException jsonioexception;
        jsonioexception;
        fileinputstream1 = fileinputstream;
          goto _L5
    }
}
