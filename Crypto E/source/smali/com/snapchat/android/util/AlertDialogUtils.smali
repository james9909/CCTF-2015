.class public Lcom/snapchat/android/util/AlertDialogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;,
        Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/CountDownTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    return-void
.end method

.method static synthetic a(I)I
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-static {p0}, Lcom/snapchat/android/util/AlertDialogUtils;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/snapchat/android/util/AlertDialogUtils;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static a(ILandroid/content/Context;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;I)V

    .line 85
    return-void
.end method

.method public static a(ILandroid/content/Context;I)V
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 88
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;I)V

    .line 89
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 197
    sget-boolean v0, Lcom/snapchat/android/util/ApiHelper;->f:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    const-string v1, "hasSeenNexus4RestartMessage"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 207
    const-string v1, "hasSeenNexus4RestartMessage"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 210
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 211
    const-string v1, "Nexus 4 Restarts"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 212
    const v1, 0x7f060003

    invoke-static {p0, v1}, Lcom/snapchat/android/util/gl/RawResourceReader;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 214
    const-string v1, "Support"

    new-instance v2, Lcom/snapchat/android/util/AlertDialogUtils$7;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/AlertDialogUtils$7;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 227
    const v1, 0x7f0c0142

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V
    .locals 4
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 331
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v1

    .line 332
    if-nez v1, :cond_0

    .line 452
    :goto_0
    return-void

    .line 336
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 337
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->r_()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    :cond_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 343
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->e(Ljava/lang/String;Lcom/snapchat/android/model/User;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    const v0, 0x7f070001

    new-instance v1, Lcom/snapchat/android/util/AlertDialogUtils$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snapchat/android/util/AlertDialogUtils$14;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 451
    :goto_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 371
    :cond_2
    const v0, 0x7f070003

    new-instance v1, Lcom/snapchat/android/util/AlertDialogUtils$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snapchat/android/util/AlertDialogUtils$15;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 398
    :cond_3
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 399
    const v0, 0x7f070002

    new-instance v1, Lcom/snapchat/android/util/AlertDialogUtils$16;

    invoke-direct {v1, p1, p2, p3}, Lcom/snapchat/android/util/AlertDialogUtils$16;-><init>(Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 408
    :cond_4
    if-nez p4, :cond_5

    .line 410
    const v0, 0x7f070005

    new-instance v1, Lcom/snapchat/android/util/AlertDialogUtils$17;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snapchat/android/util/AlertDialogUtils$17;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 428
    :cond_5
    const v0, 0x7f070004

    new-instance v1, Lcom/snapchat/android/util/AlertDialogUtils$18;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/snapchat/android/util/AlertDialogUtils$18;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-static {p0}, Lcom/snapchat/android/model/User;->a(Landroid/content/Context;)Lcom/snapchat/android/model/User;

    move-result-object v1

    .line 163
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    const v0, 0x7f0c0182

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 166
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v3

    .line 168
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->r_()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    invoke-virtual {v3}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v0

    .line 172
    :cond_0
    const v3, 0x7f0c0181

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 173
    const v0, 0x7f0c0180

    new-instance v3, Lcom/snapchat/android/util/AlertDialogUtils$5;

    invoke-direct {v3, p1, v1, p2}, Lcom/snapchat/android/util/AlertDialogUtils$5;-><init>(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    const v0, 0x7f0c003d

    new-instance v3, Lcom/snapchat/android/util/AlertDialogUtils$6;

    invoke-direct {v3, p1, v1}, Lcom/snapchat/android/util/AlertDialogUtils$6;-><init>(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 194
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 59
    const v1, 0x7f0c0142

    new-instance v2, Lcom/snapchat/android/util/AlertDialogUtils$1;

    invoke-direct {v2}, Lcom/snapchat/android/util/AlertDialogUtils$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 65
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 74
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 75
    const v1, 0x7f0c0142

    new-instance v2, Lcom/snapchat/android/util/AlertDialogUtils$2;

    invoke-direct {v2}, Lcom/snapchat/android/util/AlertDialogUtils$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 81
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c022a

    new-instance v3, Lcom/snapchat/android/util/AlertDialogUtils$11;

    invoke-direct {v3, p3}, Lcom/snapchat/android/util/AlertDialogUtils$11;-><init>(Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0130

    new-instance v3, Lcom/snapchat/android/util/AlertDialogUtils$10;

    invoke-direct {v3, p3}, Lcom/snapchat/android/util/AlertDialogUtils$10;-><init>(Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 275
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;I)V

    .line 93
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 96
    new-instance v0, Lcom/snapchat/android/util/AlertDialogUtils$3;

    invoke-direct {v0, p2, p0, p1}, Lcom/snapchat/android/util/AlertDialogUtils$3;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    invoke-static {p0}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static b(I)I
    .locals 3
    .parameter

    .prologue
    .line 116
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    .line 117
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter for length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    const/4 p0, 0x0

    .line 123
    :cond_1
    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 232
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 235
    const-string v1, "firstTimeUsingBeta"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 236
    if-eqz v1, :cond_0

    .line 239
    new-instance v1, Lcom/snapchat/android/util/AlertDialogUtils$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/AlertDialogUtils$8;-><init>(Landroid/content/Context;)V

    .line 240
    const v2, 0x7f0c01e6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 241
    const v2, 0x7f0c0030

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 242
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 243
    const/4 v2, -0x1

    const v3, 0x7f0c0142

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/util/AlertDialogUtils$9;

    invoke-direct {v4, v0}, Lcom/snapchat/android/util/AlertDialogUtils$9;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 252
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 456
    invoke-static {p0, p1, p2}, Lcom/snapchat/android/util/EditNameDialog;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;Landroid/os/Message;)Lcom/snapchat/android/util/EditNameDialog;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/snapchat/android/util/EditNameDialog;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)Lcom/snapchat/android/util/EditNameDialog;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Lcom/snapchat/android/ui/EditTextDialog;->show()V

    .line 459
    invoke-virtual {v0}, Lcom/snapchat/android/ui/EditTextDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 460
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 279
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 281
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 282
    const v1, 0x7f040096

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 283
    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 285
    :cond_0
    const v0, 0x7f0a0128

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 287
    const v1, 0x7f0c022b

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 288
    const v1, 0x7f0a0127

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 290
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c022a

    new-instance v4, Lcom/snapchat/android/util/AlertDialogUtils$13;

    invoke-direct {v4, v0, p3}, Lcom/snapchat/android/util/AlertDialogUtils$13;-><init>(Landroid/widget/CheckBox;Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0130

    new-instance v3, Lcom/snapchat/android/util/AlertDialogUtils$12;

    invoke-direct {v3, p3}, Lcom/snapchat/android/util/AlertDialogUtils$12;-><init>(Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 310
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 134
    sget-object v0, Lcom/snapchat/android/util/AlertDialogUtils;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/snapchat/android/util/AlertDialogUtils;->a:Ljava/util/Map;

    .line 136
    :cond_0
    sget-object v0, Lcom/snapchat/android/util/AlertDialogUtils;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    .line 139
    :cond_1
    invoke-static {p0}, Lcom/snapchat/android/util/AlertDialogUtils;->c(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 145
    new-instance v1, Lcom/snapchat/android/util/AlertDialogUtils$4;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/snapchat/android/util/AlertDialogUtils$4;-><init>(JJLjava/lang/String;)V

    .line 153
    sget-object v0, Lcom/snapchat/android/util/AlertDialogUtils;->a:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 155
    return-void
.end method
