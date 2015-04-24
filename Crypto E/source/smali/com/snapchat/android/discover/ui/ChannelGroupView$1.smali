.class Lcom/snapchat/android/discover/ui/ChannelGroupView$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/ui/ChannelGroupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/ChannelGroupView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/ChannelGroupView;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView$1;->a:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView$1;->a:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->a(Lcom/snapchat/android/discover/ui/ChannelGroupView;)V

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView$1;->a:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->requestLayout()V

    .line 59
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView$1;->a:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->a(Lcom/snapchat/android/discover/ui/ChannelGroupView;)V

    .line 64
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/ChannelGroupView$1;->a:Lcom/snapchat/android/discover/ui/ChannelGroupView;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/ui/ChannelGroupView;->requestLayout()V

    .line 65
    return-void
.end method
