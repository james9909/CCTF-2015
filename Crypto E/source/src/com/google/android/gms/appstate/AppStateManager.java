// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appstate;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.internal.iu;
import java.util.List;

// Referenced classes of package com.google.android.gms.appstate:
//            AppStateBuffer

public final class AppStateManager
{
    public static interface StateConflictResult
        extends Releasable, Result
    {

        public abstract byte[] getLocalData();

        public abstract String getResolvedVersion();

        public abstract byte[] getServerData();

        public abstract int getStateKey();
    }

    public static interface StateDeletedResult
        extends Result
    {

        public abstract int getStateKey();
    }

    public static interface StateListResult
        extends Result
    {

        public abstract AppStateBuffer getStateBuffer();
    }

    public static interface StateLoadedResult
        extends Releasable, Result
    {

        public abstract byte[] getLocalData();

        public abstract int getStateKey();
    }

    public static interface StateResult
        extends Releasable, Result
    {

        public abstract StateConflictResult getConflictResult();

        public abstract StateLoadedResult getLoadedResult();
    }

    public static abstract class a extends com.google.android.gms.common.api.BaseImplementation.a
    {

        public a(GoogleApiClient googleapiclient)
        {
            super(AppStateManager.Fd, googleapiclient);
        }
    }

    static abstract class b extends a
    {

        b(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }

    static abstract class c extends a
    {

        public Result b(Status status)
        {
            return i(status);
        }

        public StateListResult i(Status status)
        {
            return new StateListResult(this, status) {

                final Status Ff;
                final c Fl;

                public AppStateBuffer getStateBuffer()
                {
                    return new AppStateBuffer(null);
                }

                public Status getStatus()
                {
                    return Ff;
                }

            
            {
                Fl = c1;
                Ff = status;
                super();
            }
            };
        }

        public c(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }

    static abstract class d extends a
    {

        public Result b(Status status)
        {
            return e(status);
        }

        public Status e(Status status)
        {
            return status;
        }

        public d(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }

    static abstract class e extends a
    {

        public Result b(Status status)
        {
            return j(status);
        }

        public StateResult j(Status status)
        {
            return AppStateManager.g(status);
        }

        public e(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }


    public static final Api API;
    static final com.google.android.gms.common.api.Api.c Fd;
    private static final com.google.android.gms.common.api.Api.b Fe;
    public static final Scope SCOPE_APP_STATE;

    private AppStateManager()
    {
    }

    public static iu a(GoogleApiClient googleapiclient)
    {
        boolean flag = true;
        boolean flag1;
        iu iu1;
        if (googleapiclient != null)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        s.b(flag1, "GoogleApiClient parameter is required.");
        s.a(googleapiclient.isConnected(), "GoogleApiClient must be connected.");
        iu1 = (iu)googleapiclient.a(Fd);
        if (iu1 == null)
        {
            flag = false;
        }
        s.a(flag, "GoogleApiClient is not configured to use the AppState API. Pass AppStateManager.API into GoogleApiClient.Builder#addApi() to use this feature.");
        return iu1;
    }

    public static PendingResult delete(GoogleApiClient googleapiclient, int i)
    {
        return googleapiclient.b(new b(googleapiclient, i) {

            final int Fg;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((iu)a1);
            }

            protected void a(iu iu1)
            {
                iu1.a(this, Fg);
            }

            public Result b(Status status)
            {
                return h(status);
            }

            public StateDeletedResult h(Status status)
            {
                return new StateDeletedResult(this, status) {

                    final Status Ff;
                    final _cls5 Fi;

                    public int getStateKey()
                    {
                        return Fi.Fg;
                    }

                    public Status getStatus()
                    {
                        return Ff;
                    }

            
            {
                Fi = _pcls5;
                Ff = status;
                super();
            }
                };
            }

            
            {
                Fg = i;
                super(googleapiclient);
            }
        });
    }

    private static StateResult f(Status status)
    {
        return new StateResult(status) {

            final Status Ff;

            public StateConflictResult getConflictResult()
            {
                return null;
            }

            public StateLoadedResult getLoadedResult()
            {
                return null;
            }

            public Status getStatus()
            {
                return Ff;
            }

            public void release()
            {
            }

            
            {
                Ff = status;
                super();
            }
        };
    }

    static StateResult g(Status status)
    {
        return f(status);
    }

    public static int getMaxNumKeys(GoogleApiClient googleapiclient)
    {
        return a(googleapiclient).fW();
    }

    public static int getMaxStateSize(GoogleApiClient googleapiclient)
    {
        return a(googleapiclient).fV();
    }

    public static PendingResult list(GoogleApiClient googleapiclient)
    {
        return googleapiclient.a(new c(googleapiclient) {

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((iu)a1);
            }

            protected void a(iu iu1)
            {
                iu1.a(this);
            }

        });
    }

    public static PendingResult load(GoogleApiClient googleapiclient, int i)
    {
        return googleapiclient.a(new e(googleapiclient, i) {

            final int Fg;

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((iu)a1);
            }

            protected void a(iu iu1)
            {
                iu1.b(this, Fg);
            }

            
            {
                Fg = i;
                super(googleapiclient);
            }
        });
    }

    public static PendingResult resolve(GoogleApiClient googleapiclient, int i, String s1, byte abyte0[])
    {
        return googleapiclient.b(new e(googleapiclient, i, s1, abyte0) {

            final int Fg;
            final String Fj;
            final byte Fk[];

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((iu)a1);
            }

            protected void a(iu iu1)
            {
                iu1.a(this, Fg, Fj, Fk);
            }

            
            {
                Fg = i;
                Fj = s1;
                Fk = abyte0;
                super(googleapiclient);
            }
        });
    }

    public static PendingResult signOut(GoogleApiClient googleapiclient)
    {
        return googleapiclient.b(new d(googleapiclient) {

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((iu)a1);
            }

            protected void a(iu iu1)
            {
                iu1.b(this);
            }

        });
    }

    public static void update(GoogleApiClient googleapiclient, int i, byte abyte0[])
    {
        googleapiclient.b(new e(googleapiclient, i, abyte0) {

            final int Fg;
            final byte Fh[];

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((iu)a1);
            }

            protected void a(iu iu1)
            {
                iu1.a(null, Fg, Fh);
            }

            
            {
                Fg = i;
                Fh = abyte0;
                super(googleapiclient);
            }
        });
    }

    public static PendingResult updateImmediate(GoogleApiClient googleapiclient, int i, byte abyte0[])
    {
        return googleapiclient.b(new e(googleapiclient, i, abyte0) {

            final int Fg;
            final byte Fh[];

            protected volatile void a(com.google.android.gms.common.api.Api.a a1)
            {
                a((iu)a1);
            }

            protected void a(iu iu1)
            {
                iu1.a(this, Fg, Fh);
            }

            
            {
                Fg = i;
                Fh = abyte0;
                super(googleapiclient);
            }
        });
    }

    static 
    {
        Fd = new com.google.android.gms.common.api.Api.c();
        Fe = new com.google.android.gms.common.api.Api.b() {

            public com.google.android.gms.common.api.Api.a a(Context context, Looper looper, ClientSettings clientsettings, Object obj, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                return b(context, looper, clientsettings, (com.google.android.gms.common.api.Api.ApiOptions.NoOptions)obj, connectioncallbacks, onconnectionfailedlistener);
            }

            public iu b(Context context, Looper looper, ClientSettings clientsettings, com.google.android.gms.common.api.Api.ApiOptions.NoOptions nooptions, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                return new iu(context, looper, connectioncallbacks, onconnectionfailedlistener, clientsettings.getAccountNameOrDefault(), (String[])clientsettings.getScopes().toArray(new String[0]));
            }

            public int getPriority()
            {
                return 0x7fffffff;
            }

        };
        SCOPE_APP_STATE = new Scope("https://www.googleapis.com/auth/appstate");
        com.google.android.gms.common.api.Api.b b1 = Fe;
        com.google.android.gms.common.api.Api.c c1 = Fd;
        Scope ascope[] = new Scope[1];
        ascope[0] = SCOPE_APP_STATE;
        API = new Api(b1, c1, ascope);
    }
}
