.class public Lnet/hockeyapp/android/views/FeedbackView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/ScrollView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->a(Landroid/content/Context;)V

    .line 100
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->b(Landroid/content/Context;)V

    .line 101
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->c(Landroid/content/Context;)V

    .line 102
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->d(Landroid/content/Context;)V

    .line 103
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->e(Landroid/content/Context;)V

    .line 105
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->h(Landroid/content/Context;)V

    .line 106
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->i(Landroid/content/Context;)V

    .line 107
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->j(Landroid/content/Context;)V

    .line 108
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->k(Landroid/content/Context;)V

    .line 109
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->m(Landroid/content/Context;)V

    .line 111
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->l(Landroid/content/Context;)V

    .line 113
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->f(Landroid/content/Context;)V

    .line 114
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->n(Landroid/content/Context;)V

    .line 115
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->o(Landroid/content/Context;)V

    .line 117
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->g(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 121
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/views/FeedbackView;->setBackgroundColor(I)V

    .line 123
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 415
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 417
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/views/FeedbackView;->p(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 127
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->a:Landroid/widget/LinearLayout;

    .line 128
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->a:Landroid/widget/LinearLayout;

    const v1, 0x20012

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 130
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    const/high16 v1, 0x4120

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 132
    const/16 v2, 0x31

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 134
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 136
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 138
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/FeedbackView;->addView(Landroid/view/View;)V

    .line 139
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 142
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->b:Landroid/widget/ScrollView;

    .line 143
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->b:Landroid/widget/ScrollView;

    const v1, 0x20017

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setId(I)V

    .line 145
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    const/4 v1, 0x1

    const/high16 v2, 0x4120

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 147
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 149
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->b:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->b:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 152
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackView;->b:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 156
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->c:Landroid/widget/LinearLayout;

    .line 157
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->c:Landroid/widget/LinearLayout;

    const v1, 0x20013

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 159
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    const/high16 v1, 0x4120

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 161
    const/4 v2, 0x3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 163
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 165
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 166
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 168
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->b:Landroid/widget/ScrollView;

    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 172
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->d:Landroid/widget/LinearLayout;

    .line 173
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->d:Landroid/widget/LinearLayout;

    const v1, 0x20015

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 175
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 176
    const/high16 v1, 0x4120

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 177
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 179
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 181
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->d:Landroid/widget/LinearLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 182
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 184
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 188
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->e:Landroid/widget/LinearLayout;

    .line 189
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->e:Landroid/widget/LinearLayout;

    const v1, 0x20014

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 191
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    const/4 v1, 0x1

    const/high16 v2, 0x4120

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 193
    const/4 v2, 0x3

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 195
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v1, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 197
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 198
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 200
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    return-void
.end method

.method private g(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 204
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->f:Landroid/widget/ListView;

    .line 205
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->f:Landroid/widget/ListView;

    const v1, 0x20016

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 207
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 209
    const/4 v1, 0x1

    const/high16 v2, 0x4120

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 211
    iget-object v2, p0, Lnet/hockeyapp/android/views/FeedbackView;->f:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v4, v1, v4, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 214
    iget-object v0, p0, Lnet/hockeyapp/android/views/FeedbackView;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackView;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    return-void
.end method

.method private getButtonSelector()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 406
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 407
    new-array v1, v5, [I

    const v2, -0x10100a7

    aput v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x100

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 408
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xbbbbbc

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 409
    new-array v1, v5, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x777778

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 410
    return-object v0

    .line 408
    :array_0
    .array-data 0x4
        0x59t 0xfft 0xfet 0xfet
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private h(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 218
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 219
    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 221
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 222
    const/high16 v2, 0x41a0

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 223
    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 225
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 227
    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 228
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 229
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 230
    const/4 v1, 0x2

    const/high16 v2, 0x4170

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 232
    const-string v1, "Name"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 233
    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 234
    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/FeedbackView;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 236
    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    return-void
.end method

.method private i(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 240
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 241
    const/16 v1, 0x2004

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 243
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 244
    const/high16 v2, 0x41a0

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 245
    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 247
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 249
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 250
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 251
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 252
    const/4 v1, 0x2

    const/high16 v2, 0x4170

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 253
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 254
    const-string v1, "Email"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 255
    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 256
    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/FeedbackView;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 258
    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    return-void
.end method

.method private j(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 263
    const/16 v1, 0x2006

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 265
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 266
    const/high16 v2, 0x41a0

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 267
    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 269
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 271
    const/16 v1, 0x4031

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 272
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 273
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 274
    const/4 v1, 0x2

    const/high16 v2, 0x4170

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 275
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 276
    const-string v1, "Subject"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 277
    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 278
    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/FeedbackView;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 280
    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    return-void
.end method

.method private k(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 284
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 285
    const/16 v1, 0x2008

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 287
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 289
    const/high16 v2, 0x41a0

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 290
    const/high16 v3, 0x42c8

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v6, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 291
    invoke-virtual {v1, v5, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 293
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 295
    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 296
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 297
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 298
    const/4 v1, 0x2

    const/high16 v2, 0x4170

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 299
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 300
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 301
    const-string v1, "Message"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 302
    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 303
    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/views/FeedbackView;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 305
    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    return-void
.end method

.method private l(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x2

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 309
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 310
    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 312
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 313
    const/high16 v2, 0x4120

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 314
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 318
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 319
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 320
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 321
    const-string v1, "Last Updated: "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    const/4 v1, 0x2

    const/high16 v2, 0x4170

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 324
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 326
    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    return-void
.end method

.method private m(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x1

    const/high16 v4, 0x4120

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 331
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 332
    const/16 v1, 0x2009

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 334
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v6, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 335
    const/high16 v2, 0x41f0

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 336
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v6, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 338
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 340
    invoke-virtual {v4, v7, v7, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 341
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 343
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    invoke-direct {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getButtonSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 346
    const-string v1, "Send feedback"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 348
    const/4 v1, 0x2

    const/high16 v2, 0x4170

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 350
    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    return-void
.end method

.method private n(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x1

    const/high16 v3, 0x4120

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 355
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 356
    const v1, 0x20010

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 358
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v7, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 359
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v7, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 360
    const/high16 v3, 0x40a0

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v7, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 362
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 364
    invoke-virtual {v4, v6, v6, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 365
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 366
    const/high16 v2, 0x3f80

    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 368
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    invoke-direct {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getButtonSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    invoke-virtual {v0, v6, v1, v6, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 371
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 372
    const-string v1, "Add a Response"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 374
    const/4 v1, 0x2

    const/high16 v2, 0x4170

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 376
    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    return-void
.end method

.method private o(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x1

    const/high16 v3, 0x4120

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 381
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 382
    const v1, 0x20011

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 384
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v7, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 385
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v7, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 386
    const/high16 v3, 0x40a0

    invoke-virtual {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v7, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 388
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 390
    invoke-virtual {v4, v3, v6, v6, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 391
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 393
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    invoke-direct {p0}, Lnet/hockeyapp/android/views/FeedbackView;->getButtonSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    invoke-virtual {v0, v6, v1, v6, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 396
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 397
    const-string v1, "Refresh"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 399
    const/4 v1, 0x2

    const/high16 v2, 0x4170

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 400
    const/high16 v1, 0x3f80

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 402
    iget-object v1, p0, Lnet/hockeyapp/android/views/FeedbackView;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 403
    return-void
.end method

.method private p(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 426
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 427
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 428
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 429
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 430
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 431
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 433
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff8

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 434
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 435
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 436
    const v4, -0xbbbbbc

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 438
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 439
    invoke-virtual {v2, v6, v6, v6, v0}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 441
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v6

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
