.class public Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$3;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/snapchat/android/model/StoryGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snapchat/android/model/StoryGroup;)V
    .locals 0
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->b:Lcom/snapchat/android/model/StoryGroup;

    .line 37
    return-void
.end method

.method private a(Lcom/snapchat/android/model/StorySnap;)V
    .locals 3
    .parameter
        .annotation runtime Ljavax/validation/constraints/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/snapchat/android/model/StorySnap;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->b:Lcom/snapchat/android/model/StoryGroup;

    sget-object v1, Lcom/snapchat/android/model/StoryGroup$ActionState;->READY:Lcom/snapchat/android/model/StoryGroup$ActionState;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryGroup;->a(Lcom/snapchat/android/model/StoryGroup$ActionState;)V

    .line 100
    const v0, 0x7f0c016f

    iget-object v1, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 122
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v1, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$2;

    iget-object v2, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->a:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$2;-><init>(Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/snapchat/android/util/ScExecutors;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->b()V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;)Lcom/snapchat/android/model/StoryGroup;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->b:Lcom/snapchat/android/model/StoryGroup;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->b:Lcom/snapchat/android/model/StoryGroup;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/model/StoryGroup;->a(Z)Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 82
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnapLogbook;

    .line 83
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnapLogbook;->e()Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->ao()I

    move-result v2

    if-nez v2, :cond_0

    .line 86
    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->a(Lcom/snapchat/android/model/StorySnap;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;

    iget-object v2, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->b:Lcom/snapchat/android/model/StoryGroup;

    invoke-direct {v0, v2, v3, v1}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;-><init>(Landroid/content/Context;Lcom/snapchat/android/model/StoryGroup;Ljava/util/List;)V

    .line 92
    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->c:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->ap()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->a:Landroid/content/Context;

    const v2, 0x7f0c0187

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0186

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog$1;-><init>(Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;)V

    invoke-static {v1, v2, v0, v3}, Lcom/snapchat/android/util/AlertDialogUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/android/util/AlertDialogUtils$YesNoAlertListener;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/ui/dialog/ConfirmSaveStoryToGalleryDialog;->b()V

    goto :goto_0
.end method
