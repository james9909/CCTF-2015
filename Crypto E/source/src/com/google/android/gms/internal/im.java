// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.appindexing.AppLinkingApi;
import com.google.android.gms.appindexing.a;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            hu, iq, in, ip

public class im
    implements AppLinkingApi
{
    static abstract class a extends com.google.android.gms.common.api.BaseImplementation.a
    {

        protected volatile void a(com.google.android.gms.common.api.Api.a a1)
        {
            a((iq)a1);
        }

        protected abstract void a(in in);

        protected final void a(iq iq1)
        {
            a(iq1.fQ());
        }

        public a(GoogleApiClient googleapiclient)
        {
            super(hu.DJ, googleapiclient);
        }
    }

    static class b
        implements com.google.android.gms.appindexing.AppLinkingApi.TranslatedUriResult, Result
    {

        private final String CN;
        private final String DV;
        private final Status EI;
        private final Uri EJ;
        private final int EK;
        private final Uri mUri;

        public String getAction()
        {
            return CN;
        }

        public Intent getAsIntent()
        {
            Intent intent = (new Intent("android.intent.action.VIEW")).addCategory("android.intent.category.BROWSABLE");
            if (getStatus() != null && getStatus().isSuccess())
            {
                intent.setData(mUri);
                if (!TextUtils.isEmpty(DV))
                {
                    intent.setPackage(DV);
                }
            } else
            {
                intent.setData(getOriginalUri());
            }
            if (!TextUtils.isEmpty(CN))
            {
                intent.setAction(CN);
            }
            if (intent.getData() != null)
            {
                return intent;
            } else
            {
                return null;
            }
        }

        public Uri getOriginalUri()
        {
            return EJ;
        }

        public String getPackageName()
        {
            return DV;
        }

        public Status getStatus()
        {
            return EI;
        }

        public Uri getUri()
        {
            return mUri;
        }

        public int getVerificationStatus()
        {
            return EK;
        }

        public b(Status status, Uri uri, Uri uri1, String s, String s1, int i)
        {
            EI = status;
            EJ = uri;
            mUri = uri1;
            DV = s;
            CN = s1;
            EK = i;
        }
    }

    static class c
        implements com.google.android.gms.appindexing.AppLinkingApi.TranslatedUriResults, Result
    {

        private final Status EI;
        private final List EL;

        public com.google.android.gms.appindexing.AppLinkingApi.TranslatedUriResult get(int i)
        {
            return (com.google.android.gms.appindexing.AppLinkingApi.TranslatedUriResult)EL.get(i);
        }

        public List getAsList()
        {
            return EL;
        }

        public int getSize()
        {
            return EL.size();
        }

        public Status getStatus()
        {
            return EI;
        }

        public c(Status status, List list)
        {
            EL = list;
            EI = status;
        }
    }


    public im()
    {
    }

    com.google.android.gms.appindexing.AppLinkingApi.TranslatedUriResults a(Status status, List list)
    {
        ArrayList arraylist = new ArrayList();
        if (list != null)
        {
            com.google.android.gms.appindexing.a a1;
            for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(new b(status, a1.getOriginalUri(), a1.fS(), a1.getPackageName(), a1.getAction(), a1.getVerificationStatus())))
            {
                a1 = (com.google.android.gms.appindexing.a)iterator.next();
            }

        }
        return new c(status, arraylist);
    }

    public PendingResult loadTranslatedUri(GoogleApiClient googleapiclient, Uri uri)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(uri);
        return googleapiclient.a(new a(googleapiclient, uri, arraylist) {

            final Uri ED;
            final List EE;
            final im EF;

            public com.google.android.gms.appindexing.AppLinkingApi.TranslatedUriResult a(Status status)
            {
                return new b(status, ED, null, null, null, 0);
            }

            protected void a(in in1)
            {
                in1.a(new ip(this, this) {

                    final _cls1 EG;

                    public void b(Status status, List list)
                    {
                        if (list.size() > 0)
                        {
                            EM.e(new b(status, ((com.google.android.gms.appindexing.a)list.get(0)).getOriginalUri(), ((com.google.android.gms.appindexing.a)list.get(0)).fS(), ((com.google.android.gms.appindexing.a)list.get(0)).getPackageName(), ((com.google.android.gms.appindexing.a)list.get(0)).getAction(), ((com.google.android.gms.appindexing.a)list.get(0)).getVerificationStatus()));
                            return;
                        } else
                        {
                            EM.e(new b(Status.RS, EG.ED, null, null, null, 0));
                            return;
                        }
                    }

            
            {
                EG = _pcls1;
                super(b1);
            }
                }, EE);
            }

            public Result b(Status status)
            {
                return a(status);
            }

            
            {
                EF = im.this;
                ED = uri;
                EE = list;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadTranslatedUris(GoogleApiClient googleapiclient, List list)
    {
        return googleapiclient.a(new a(googleapiclient, list) {

            final List EE;
            final im EF;

            protected void a(in in1)
            {
                in1.a(new ip(this, this) {

                    final _cls2 EH;

                    public void b(Status status, List list)
                    {
                        if (list != null && list.size() > 0)
                        {
                            EM.e(EH.EF.a(status, list));
                            return;
                        } else
                        {
                            EM.e(EH.EF.a(Status.RS, list));
                            return;
                        }
                    }

            
            {
                EH = _pcls2;
                super(b1);
            }
                }, EE);
            }

            public Result b(Status status)
            {
                return c(status);
            }

            public com.google.android.gms.appindexing.AppLinkingApi.TranslatedUriResults c(Status status)
            {
                return new c(status, null);
            }

            
            {
                EF = im.this;
                EE = list;
                super(googleapiclient);
            }
        });
    }
}
