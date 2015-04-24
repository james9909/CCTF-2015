// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.snapchat.android.util;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.snapchat.android.util.crypto.CbcKeyAndIvWrapper;
import com.snapchat.android.util.crypto.CbcKeyAndIvWrapperAdapter;
import com.snapchat.android.util.crypto.SlightlySecurePreferencesKey;
import com.snapchat.android.util.crypto.SlightlySecurePreferencesKeyAdapter;

public final class GsonUtil
{

    private static final Gson a = (new GsonBuilder()).registerTypeAdapter(com/snapchat/android/util/crypto/CbcKeyAndIvWrapper, (new CbcKeyAndIvWrapperAdapter()).nullSafe()).registerTypeAdapter(com/snapchat/android/util/crypto/SlightlySecurePreferencesKey, new SlightlySecurePreferencesKeyAdapter()).enableComplexMapKeySerialization().create();

    private GsonUtil()
    {
    }

    public static Gson a()
    {
        return a;
    }

}
