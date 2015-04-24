.class Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;->a(Lcom/snapchat/android/discover/ui/DSnapView;Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/discover/model/DSnapPanel;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/discover/ui/DSnapView;

.field final synthetic b:Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;


# direct methods
.method constructor <init>(Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;Lcom/snapchat/android/discover/ui/DSnapView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$1;->b:Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator;

    iput-object p2, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$1;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/DSnapItemArrowViewAdapterDecorator$1;->a:Lcom/snapchat/android/discover/ui/DSnapView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/discover/ui/DSnapView;->b(I)V

    .line 84
    return-void
.end method
