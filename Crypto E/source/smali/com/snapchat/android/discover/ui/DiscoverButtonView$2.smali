.class Lcom/snapchat/android/discover/ui/DiscoverButtonView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/DiscoverButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DiscoverButtonView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DiscoverButtonView;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView$2;->a:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DiscoverButtonView$2;->a:Lcom/snapchat/android/discover/ui/DiscoverButtonView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/DiscoverButtonView;->invalidate()V

    .line 54
    return-void
.end method
