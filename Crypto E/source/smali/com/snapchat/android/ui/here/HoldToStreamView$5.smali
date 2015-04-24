.class Lcom/snapchat/android/ui/here/HoldToStreamView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Landroid/view/View;)V
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
    .line 703
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$5;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 706
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView$5;->a:Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->c(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/snapchat/android/ui/here/StreamView$StreamViewCallback;->o()V

    .line 707
    return-void
.end method
