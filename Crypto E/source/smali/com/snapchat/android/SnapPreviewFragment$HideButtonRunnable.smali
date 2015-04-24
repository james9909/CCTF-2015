.class Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/SnapPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HideButtonRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapPreviewFragment;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/snapchat/android/SnapPreviewFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1307
    iput-object p1, p0, Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/SnapPreviewFragment;Lcom/snapchat/android/SnapPreviewFragment$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1307
    invoke-direct {p0, p1}, Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;-><init>(Lcom/snapchat/android/SnapPreviewFragment;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;->b:Z

    .line 1317
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1312
    iget-boolean v0, p0, Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/SnapPreviewFragment$HideButtonRunnable;->a:Lcom/snapchat/android/SnapPreviewFragment;

    invoke-static {v0}, Lcom/snapchat/android/SnapPreviewFragment;->u(Lcom/snapchat/android/SnapPreviewFragment;)V

    .line 1313
    :cond_0
    return-void
.end method
