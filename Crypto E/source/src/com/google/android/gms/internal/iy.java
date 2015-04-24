// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


public final class iy extends Enum
{

    public static final iy FL;
    public static final iy FM;
    public static final iy FN;
    public static final iy FO;
    public static final iy FP;
    public static final iy FQ;
    public static final iy FR;
    public static final iy FS;
    public static final iy FT;
    public static final iy FU;
    public static final iy FV;
    public static final iy FW;
    public static final iy FX;
    public static final iy FY;
    public static final iy FZ;
    public static final iy GA;
    public static final iy GB;
    public static final iy GC;
    public static final iy GD;
    public static String GE = "Error";
    public static String GF = "status";
    private static final iy GH[];
    public static final iy Ga;
    public static final iy Gb;
    public static final iy Gc;
    public static final iy Gd;
    public static final iy Ge;
    public static final iy Gf;
    public static final iy Gg;
    public static final iy Gh;
    public static final iy Gi;
    public static final iy Gj;
    public static final iy Gk;
    public static final iy Gl;
    public static final iy Gm;
    public static final iy Gn;
    public static final iy Go;
    public static final iy Gp;
    public static final iy Gq;
    public static final iy Gr;
    public static final iy Gs;
    public static final iy Gt;
    public static final iy Gu;
    public static final iy Gv;
    public static final iy Gw;
    public static final iy Gx;
    public static final iy Gy;
    public static final iy Gz;
    private final String GG;

    private iy(String s, int i, String s1)
    {
        super(s, i);
        GG = s1;
    }

    public static iy valueOf(String s)
    {
        return (iy)Enum.valueOf(com/google/android/gms/internal/iy, s);
    }

    public static iy[] values()
    {
        return (iy[])GH.clone();
    }

    public String fY()
    {
        return GG;
    }

    static 
    {
        FL = new iy("SUCCESS", 0, "Ok");
        FM = new iy("BAD_AUTHENTICATION", 1, "BadAuthentication");
        FN = new iy("NEEDS_2F", 2, "InvalidSecondFactor");
        FO = new iy("NOT_VERIFIED", 3, "NotVerified");
        FP = new iy("TERMS_NOT_AGREED", 4, "TermsNotAgreed");
        FQ = new iy("UNKNOWN", 5, "Unknown");
        FR = new iy("UNKNOWN_ERROR", 6, "UNKNOWN_ERR");
        FS = new iy("ACCOUNT_DELETED", 7, "AccountDeleted");
        FT = new iy("ACCOUNT_DISABLED", 8, "AccountDisabled");
        FU = new iy("SERVICE_DISABLED", 9, "ServiceDisabled");
        FV = new iy("SERVICE_UNAVAILABLE", 10, "ServiceUnavailable");
        FW = new iy("CAPTCHA", 11, "CaptchaRequired");
        FX = new iy("NETWORK_ERROR", 12, "NetworkError");
        FY = new iy("USER_CANCEL", 13, "UserCancel");
        FZ = new iy("PERMISSION_DENIED", 14, "PermissionDenied");
        Ga = new iy("DEVICE_MANAGEMENT_REQUIRED", 15, "DeviceManagementRequiredOrSyncDisabled");
        Gb = new iy("DM_INTERNAL_ERROR", 16, "DeviceManagementInternalError");
        Gc = new iy("DM_SYNC_DISABLED", 17, "DeviceManagementSyncDisabled");
        Gd = new iy("DM_ADMIN_BLOCKED", 18, "DeviceManagementAdminBlocked");
        Ge = new iy("DM_ADMIN_PENDING_APPROVAL", 19, "DeviceManagementAdminPendingApproval");
        Gf = new iy("DM_STALE_SYNC_REQUIRED", 20, "DeviceManagementStaleSyncRequired");
        Gg = new iy("DM_DEACTIVATED", 21, "DeviceManagementDeactivated");
        Gh = new iy("DM_REQUIRED", 22, "DeviceManagementRequired");
        Gi = new iy("CLIENT_LOGIN_DISABLED", 23, "ClientLoginDisabled");
        Gj = new iy("NEED_PERMISSION", 24, "NeedPermission");
        Gk = new iy("BAD_PASSWORD", 25, "WeakPassword");
        Gl = new iy("ALREADY_HAS_GMAIL", 26, "ALREADY_HAS_GMAIL");
        Gm = new iy("BAD_REQUEST", 27, "BadRequest");
        Gn = new iy("BAD_USERNAME", 28, "BadUsername");
        Go = new iy("LOGIN_FAIL", 29, "LoginFail");
        Gp = new iy("NOT_LOGGED_IN", 30, "NotLoggedIn");
        Gq = new iy("NO_GMAIL", 31, "NoGmail");
        Gr = new iy("REQUEST_DENIED", 32, "RequestDenied");
        Gs = new iy("SERVER_ERROR", 33, "ServerError");
        Gt = new iy("USERNAME_UNAVAILABLE", 34, "UsernameUnavailable");
        Gu = new iy("DELETED_GMAIL", 35, "DeletedGmail");
        Gv = new iy("SOCKET_TIMEOUT", 36, "SocketTimeout");
        Gw = new iy("EXISTING_USERNAME", 37, "ExistingUsername");
        Gx = new iy("NEEDS_BROWSER", 38, "NeedsBrowser");
        Gy = new iy("GPLUS_OTHER", 39, "GPlusOther");
        Gz = new iy("GPLUS_NICKNAME", 40, "GPlusNickname");
        GA = new iy("GPLUS_INVALID_CHAR", 41, "GPlusInvalidChar");
        GB = new iy("GPLUS_INTERSTITIAL", 42, "GPlusInterstitial");
        GC = new iy("GPLUS_PROFILE_ERROR", 43, "ProfileUpgradeError");
        GD = new iy("INVALID_SCOPE", 44, "INVALID_SCOPE");
        iy aiy[] = new iy[45];
        aiy[0] = FL;
        aiy[1] = FM;
        aiy[2] = FN;
        aiy[3] = FO;
        aiy[4] = FP;
        aiy[5] = FQ;
        aiy[6] = FR;
        aiy[7] = FS;
        aiy[8] = FT;
        aiy[9] = FU;
        aiy[10] = FV;
        aiy[11] = FW;
        aiy[12] = FX;
        aiy[13] = FY;
        aiy[14] = FZ;
        aiy[15] = Ga;
        aiy[16] = Gb;
        aiy[17] = Gc;
        aiy[18] = Gd;
        aiy[19] = Ge;
        aiy[20] = Gf;
        aiy[21] = Gg;
        aiy[22] = Gh;
        aiy[23] = Gi;
        aiy[24] = Gj;
        aiy[25] = Gk;
        aiy[26] = Gl;
        aiy[27] = Gm;
        aiy[28] = Gn;
        aiy[29] = Go;
        aiy[30] = Gp;
        aiy[31] = Gq;
        aiy[32] = Gr;
        aiy[33] = Gs;
        aiy[34] = Gt;
        aiy[35] = Gu;
        aiy[36] = Gv;
        aiy[37] = Gw;
        aiy[38] = Gx;
        aiy[39] = Gy;
        aiy[40] = Gz;
        aiy[41] = GA;
        aiy[42] = GB;
        aiy[43] = GC;
        aiy[44] = GD;
        GH = aiy;
    }
}
