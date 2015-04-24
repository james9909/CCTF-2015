.class public Lcom/snapchat/android/ui/viewholders/SendToViewHolder;
.super Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;
.source "SourceFile"


# instance fields
.field private final i:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;-><init>(Landroid/view/View;)V

    .line 24
    const v0, 0x7f0a0169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->i:Landroid/widget/CheckBox;

    .line 27
    new-instance v0, Lcom/snapchat/android/util/BouncyToucher;

    iget-object v1, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->i:Landroid/widget/CheckBox;

    const v2, 0x3f99999a

    const/high16 v3, 0x447a

    const/high16 v4, 0x41c8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/util/BouncyToucher;-><init>(Landroid/view/View;FFF)V

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 30
    iget-object v1, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->K:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 31
    return-void
.end method

.method private w()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 42
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->i:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->i:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setScaleX(F)V

    .line 47
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setScaleY(F)V

    .line 48
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/fragments/sendto/SendToItem;Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->i:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->i:Landroid/widget/CheckBox;

    invoke-interface {p2, p1}, Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;->a(Lcom/snapchat/android/fragments/sendto/SendToItem;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->i:Landroid/widget/CheckBox;

    new-instance v1, Lcom/snapchat/android/ui/viewholders/SendToViewHolder$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/snapchat/android/ui/viewholders/SendToViewHolder$1;-><init>(Lcom/snapchat/android/ui/viewholders/SendToViewHolder;Lcom/snapchat/android/fragments/sendto/SendToAdapter$SendToCheckedCallback;Lcom/snapchat/android/fragments/sendto/SendToItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    return-void
.end method

.method public c(I)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 60
    return-void
.end method

.method public t()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/snapchat/android/ui/viewholders/AddFriendViewHolder;->t()V

    .line 36
    invoke-direct {p0}, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->w()V

    .line 37
    invoke-virtual {p0}, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->z()V

    .line 38
    invoke-virtual {p0}, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->A()V

    .line 39
    return-void
.end method

.method public u()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 52
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/snapchat/android/ui/viewholders/SendToViewHolder;->i:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 56
    return-void
.end method
