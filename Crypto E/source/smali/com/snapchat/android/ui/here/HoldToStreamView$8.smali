.class Lcom/snapchat/android/ui/here/HoldToStreamView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/here/HoldToStreamView;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/here/HoldToStreamView;


# direct methods
.method constructor <init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$8;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 786
    sget-object v0, Lcom/snapchat/android/ui/here/StreamView;->i:Lcom/snapchat/android/ui/here/LocalPreviewHolder;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LocalPreviewHolder;->a()V

    .line 787
    return-void
.end method
