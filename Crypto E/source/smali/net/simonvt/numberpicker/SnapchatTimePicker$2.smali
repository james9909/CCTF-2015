.class Lnet/simonvt/numberpicker/SnapchatTimePicker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/numberpicker/SnapchatTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/simonvt/numberpicker/SnapchatTimePicker;


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/SnapchatTimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$2;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

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

    .line 636
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$2;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 637
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lnet/simonvt/numberpicker/R$id;->np__increment:I

    if-ne v0, v1, :cond_0

    .line 638
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$2;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    invoke-static {v0, v2, v4, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;ZJ)V

    .line 642
    :goto_0
    return v2

    .line 640
    :cond_0
    iget-object v0, p0, Lnet/simonvt/numberpicker/SnapchatTimePicker$2;->a:Lnet/simonvt/numberpicker/SnapchatTimePicker;

    const/4 v1, 0x0

    invoke-static {v0, v1, v4, v5}, Lnet/simonvt/numberpicker/SnapchatTimePicker;->a(Lnet/simonvt/numberpicker/SnapchatTimePicker;ZJ)V

    goto :goto_0
.end method
