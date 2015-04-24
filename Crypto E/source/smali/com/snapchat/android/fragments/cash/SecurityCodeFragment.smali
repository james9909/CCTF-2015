.class public Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$5;,
        Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;,
        Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$ValidCvvCallback;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field private b:Lcom/snapchat/android/ui/cash/CardCvvEditText;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->f:Z

    .line 45
    iput-boolean v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->g:Z

    .line 244
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/text/TextWatcher;
    .locals 1
    .parameter

    .prologue
    .line 190
    new-instance v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$4;-><init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b(Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;FF)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 185
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 186
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 187
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Landroid/view/View;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a(Landroid/view/View;FF)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Lcom/snapchat/android/ui/cash/CardCvvEditText;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    return-object v0
.end method

.method private b(Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)Ljava/lang/String;
    .locals 8
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    const v7, 0x7f0c0165

    const v6, 0x7f0c010d

    const v5, 0x7f0c0164

    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c002b

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    sparse-switch p2, :sswitch_data_0

    .line 163
    :goto_0
    if-eqz p1, :cond_0

    sget-object v1, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->UNKNOWN:Lcom/snapchat/android/api2/cash/square/data/ErrorType;

    if-eq p1, v1, :cond_0

    .line 164
    sget-object v1, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$5;->a:[I

    invoke-virtual {p1}, Lcom/snapchat/android/api2/cash/square/data/ErrorType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 180
    :cond_0
    :goto_1
    return-object v0

    .line 153
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v6, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c0210

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v7, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v6, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 170
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c0210

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v7, v1}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 174
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c004a

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c0163

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 151
    nop

    :sswitch_data_0
    .sparse-switch
        0x199 -> :sswitch_1
        0x1a6 -> :sswitch_0
        0x1ad -> :sswitch_1
    .end sparse-switch

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->f:Z

    return p1
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->h:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 66
    const v0, 0x7f0a00aa

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/cash/CardCvvEditText;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    new-instance v1, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$ValidCvvCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$ValidCvvCallback;-><init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setValidatedInputCallback(Lcom/snapchat/android/cash/ValidatedInputCallback;)V

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-direct {p0, v1}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a(Landroid/view/View;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    const v1, 0x3f19999a

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->setAlpha(F)V

    .line 70
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->b:Lcom/snapchat/android/ui/cash/CardCvvEditText;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/cash/CardCvvEditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/util/ViewUtils;->f(Landroid/content/Context;)V

    .line 74
    :cond_0
    const v0, 0x7f0a00ac

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->c:Landroid/view/View;

    .line 75
    const v0, 0x7f0a00af

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->d:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0a00ae

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->a:Landroid/view/View;

    new-instance v1, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$1;-><init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)V
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 127
    new-instance v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$3;-><init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;Lcom/snapchat/android/api2/cash/square/data/ErrorType;I)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method

.method public a(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->h:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;

    .line 108
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->x:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 103
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 104
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$2;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$2;-><init>(Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;)V

    invoke-static {v0}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->h:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;

    if-eqz v0, :cond_0

    .line 89
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->g:Z

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->h:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;->b()V

    .line 95
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->h:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;

    .line 97
    const/4 v0, 0x0

    return v0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->h:Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;

    invoke-interface {v0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment$SecurityCodeCallback;->a()V

    goto :goto_0
.end method

.method public e_()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    const v0, 0x7f040018

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->x:Landroid/view/View;

    .line 60
    invoke-direct {p0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->h()V

    .line 62
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public s_()V
    .locals 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/cash/SecurityCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 53
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/SetPagingEnabledEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 54
    return-void
.end method
