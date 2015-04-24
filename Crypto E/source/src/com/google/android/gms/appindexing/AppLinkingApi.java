// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appindexing;

import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import java.util.List;

public interface AppLinkingApi
{
    public static interface TranslatedUriResult
        extends Result
    {

        public static final int UNDEFINED = 0;
        public static final int UNVERIFIED = 2;
        public static final int VERIFIED = 1;

        public abstract String getAction();

        public abstract Intent getAsIntent();

        public abstract Uri getOriginalUri();

        public abstract String getPackageName();

        public abstract Uri getUri();

        public abstract int getVerificationStatus();
    }

    public static interface TranslatedUriResults
        extends Result
    {

        public abstract TranslatedUriResult get(int i);

        public abstract List getAsList();

        public abstract int getSize();
    }


    public static final String API_KEY_METADATA_NAME = "com.google.android.gms.appindexing.api_key";

    public abstract PendingResult loadTranslatedUri(GoogleApiClient googleapiclient, Uri uri);

    public abstract PendingResult loadTranslatedUris(GoogleApiClient googleapiclient, List list);
}
