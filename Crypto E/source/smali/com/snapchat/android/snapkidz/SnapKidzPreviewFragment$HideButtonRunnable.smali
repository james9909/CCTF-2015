.class Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HideButtonRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;-><init>(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;->b:Z

    .line 451
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment$HideButtonRunnable;->a:Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;->h(Lcom/snapchat/android/snapkidz/SnapKidzPreviewFragment;)V

    .line 447
    :cond_0
    return-void
.end method
