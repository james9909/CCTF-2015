// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util.crypto;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

// Referenced classes of package com.snapchat.android.util.crypto:
//            SlightlySecurePreferencesKeyType, SlightlySecurePreferencesKey

public class SlightlySecurePreferencesKeyAdapter extends TypeAdapter
{

    public SlightlySecurePreferencesKeyAdapter()
    {
    }

    public SlightlySecurePreferencesKey a(JsonReader jsonreader)
    {
        jsonreader.beginArray();
        String s = jsonreader.nextString();
        SlightlySecurePreferencesKeyType slightlysecurepreferenceskeytype = SlightlySecurePreferencesKeyType.values()[jsonreader.nextInt()];
        jsonreader.endArray();
        return new SlightlySecurePreferencesKey(s, slightlysecurepreferenceskeytype);
    }

    public void a(JsonWriter jsonwriter, SlightlySecurePreferencesKey slightlysecurepreferenceskey)
    {
        jsonwriter.beginArray();
        jsonwriter.value(slightlysecurepreferenceskey.a());
        jsonwriter.value(slightlysecurepreferenceskey.b().ordinal());
        jsonwriter.endArray();
    }

    public Object read(JsonReader jsonreader)
    {
        return a(jsonreader);
    }

    public void write(JsonWriter jsonwriter, Object obj)
    {
        a(jsonwriter, (SlightlySecurePreferencesKey)obj);
    }
}
