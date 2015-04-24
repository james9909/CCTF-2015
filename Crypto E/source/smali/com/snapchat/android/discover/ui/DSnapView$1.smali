.class Lcom/snapchat/android/discover/ui/DSnapView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/discover/ui/DSnapLoadingStatePresenter$OnTapToRetryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/DSnapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapView;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapView$1;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/discover/model/MediaState;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapView$1;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapView;->a(Lcom/snapchat/android/discover/ui/DSnapView;)Lcom/snapchat/android/discover/controller/DiscoverMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/discover/controller/DiscoverMediaManager;->c()V

    .line 109
    return-void
.end method
