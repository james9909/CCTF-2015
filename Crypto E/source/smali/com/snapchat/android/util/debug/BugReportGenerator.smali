.class public Lcom/snapchat/android/util/debug/BugReportGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/debug/ShakeReporter$BugReporter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 162
    const-class v0, Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/util/debug/BugReportGenerator;->a(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/cameraview/CameraView;

    .line 163
    const-class v1, Landroid/view/TextureView;

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/util/debug/BugReportGenerator;->a(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    .line 164
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/util/debug/BugReportGenerator;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/debug/BugReportGenerator;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 171
    if-nez p1, :cond_1

    move-object p1, v1

    .line 189
    :cond_0
    :goto_0
    return-object p1

    .line 175
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p2, :cond_0

    .line 179
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 180
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 181
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    move-object v0, p1

    .line 182
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/snapchat/android/util/debug/BugReportGenerator;->a(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_2

    move-object p1, v0

    .line 184
    goto :goto_0

    .line 181
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object p1, v1

    .line 189
    goto :goto_0
.end method


# virtual methods
.method a(Landroid/app/Activity;Landroid/graphics/Bitmap;)Ljava/io/File;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 199
    const-string v0, "snapchat_shake2report.jpeg"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 200
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x32

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 201
    invoke-static {v0}, Lcom/snapchat/android/util/network/CloseableUtils;->a(Ljava/io/Closeable;)V

    .line 202
    const-string v0, "snapchat_shake2report.jpeg"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 42
    const-string v0, "BugReportGenerator"

    const-string v1, "Activated Shake To Report"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    new-instance v0, Lcom/snapchat/android/util/debug/BugReportGenerator$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/android/util/debug/BugReportGenerator$1;-><init>(Lcom/snapchat/android/util/debug/BugReportGenerator;Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->b(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method a(Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 54
    if-eqz p3, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/snapchat/android/util/debug/BugReportGenerator;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0}, Lcom/snapchat/android/util/debug/DebugCapturer;->a(Landroid/content/Context;Z)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/snapchat/android/util/debug/DebugCapturer;->a(Landroid/content/Context;)Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 74
    :goto_2
    if-eqz p3, :cond_1

    const-string v0, "snapchat_shake2report.jpeg"

    .line 75
    :goto_3
    new-instance v1, Lcom/snapchat/android/util/debug/BugReportGenerator$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/snapchat/android/util/debug/BugReportGenerator$2;-><init>(Lcom/snapchat/android/util/debug/BugReportGenerator;Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 81
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string v1, "BugReportGenerator"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    .line 65
    const-string v1, "BugReportGenerator"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 70
    :catch_2
    move-exception v0

    .line 71
    const-string v1, "BugReportGenerator"

    invoke-static {v1, v0}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_3
.end method

.method a(Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    const-string v1, "Shake To Report"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Please describe the issue in the coming pop-up screen. Every bug/request you file will help prevent a user from experiencing that pain!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Send Feedback"

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportGenerator$5;

    invoke-direct {v2, p0, p1, p3}, Lcom/snapchat/android/util/debug/BugReportGenerator$5;-><init>(Lcom/snapchat/android/util/debug/BugReportGenerator;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportGenerator$4;

    invoke-direct {v2, p0, p2}, Lcom/snapchat/android/util/debug/BugReportGenerator$4;-><init>(Lcom/snapchat/android/util/debug/BugReportGenerator;Lcom/snapchat/android/util/debug/ShakeReporter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/debug/BugReportGenerator$3;

    invoke-direct {v1, p0, p2}, Lcom/snapchat/android/util/debug/BugReportGenerator$3;-><init>(Lcom/snapchat/android/util/debug/BugReportGenerator;Lcom/snapchat/android/util/debug/ShakeReporter;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 118
    return-void
.end method

.method a(Landroid/view/View;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/ui/FrivolousAnimationView;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    if-nez p1, :cond_1

    .line 225
    :cond_0
    return-void

    .line 215
    :cond_1
    instance-of v0, p1, Lcom/snapchat/android/ui/FrivolousAnimationView;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 216
    check-cast v0, Lcom/snapchat/android/ui/FrivolousAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 220
    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    move-object v0, p1

    .line 222
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/snapchat/android/util/debug/BugReportGenerator;->a(Landroid/view/View;Ljava/util/Map;)V

    .line 221
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method b(Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 124
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-virtual {p0, v2, v3}, Lcom/snapchat/android/util/debug/BugReportGenerator;->a(Landroid/view/View;Ljava/util/Map;)V

    .line 127
    instance-of v0, p1, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(J)V

    .line 131
    new-instance v0, Lcom/snapchat/android/util/debug/BugReportGenerator$6;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/util/debug/BugReportGenerator$6;-><init>(Lcom/snapchat/android/util/debug/BugReportGenerator;Landroid/view/View;Ljava/util/Map;Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 151
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/debug/BugReportGenerator$7;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/util/debug/BugReportGenerator$7;-><init>(Lcom/snapchat/android/util/debug/BugReportGenerator;Landroid/view/View;Ljava/util/Map;Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method b(Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 258
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Lcom/snapchat/android/util/debug/BugReportGenerator$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/snapchat/android/util/debug/BugReportGenerator$8;-><init>(Lcom/snapchat/android/util/debug/BugReportGenerator;Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->b(Ljava/lang/Runnable;)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/snapchat/android/util/debug/BugReportGenerator;->a(Landroid/app/Activity;Lcom/snapchat/android/util/debug/ShakeReporter;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method b(Landroid/view/View;Ljava/util/Map;)V
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Lcom/snapchat/android/ui/FrivolousAnimationView;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 253
    :cond_0
    return-void

    .line 239
    :cond_1
    instance-of v0, p1, Lcom/snapchat/android/ui/FrivolousAnimationView;

    if-eqz v0, :cond_2

    .line 240
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 245
    :cond_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    move-object v0, p1

    .line 247
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 248
    if-eqz v0, :cond_3

    .line 249
    invoke-virtual {p0, v0, p2}, Lcom/snapchat/android/util/debug/BugReportGenerator;->b(Landroid/view/View;Ljava/util/Map;)V

    .line 246
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
