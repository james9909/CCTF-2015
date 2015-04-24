.class Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->o_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)V
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$3;->a:Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$3;->a:Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->a(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$3;->a:Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->d(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$3;->a:Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;

    invoke-static {v1}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->c(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$3;->a:Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;

    invoke-static {v0}, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->d(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 189
    :cond_0
    return-void
.end method
