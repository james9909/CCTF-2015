.class Lnet/simonvt/numberpicker/NumberPicker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$2;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 651
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$2;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->a(Lnet/simonvt/numberpicker/NumberPicker;)V

    .line 652
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$2;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->b(Lnet/simonvt/numberpicker/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 653
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lnet/simonvt/numberpicker/R$id;->np__increment:I

    if-ne v0, v1, :cond_0

    .line 654
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$2;->a:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0, v2, v4, v5}, Lnet/simonvt/numberpicker/NumberPicker;->a(Lnet/simonvt/numberpicker/NumberPicker;ZJ)V

    .line 658
    :goto_0
    return v2

    .line 656
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$2;->a:Lnet/simonvt/numberpicker/NumberPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1, v4, v5}, Lnet/simonvt/numberpicker/NumberPicker;->a(Lnet/simonvt/numberpicker/NumberPicker;ZJ)V

    goto :goto_0
.end method
