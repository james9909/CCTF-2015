.class public Lcom/snapchat/android/fragments/addfriends/ProfileFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;,
        Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/fragment/SnapchatFragment;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final p:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/graphics/Bitmap;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/content/res/ColorStateList;

.field private o:Landroid/content/res/ColorStateList;

.field private final q:Lcom/snapchat/android/model/UserPrefs;

.field private final r:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

.field private final s:Ljava/util/concurrent/ExecutorService;

.field private final t:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MAIN_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 111
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->a()Lcom/snapchat/android/model/UserPrefs;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    invoke-direct {v1}, Lcom/snapchat/android/util/bitmap/BitmapRecycling;-><init>()V

    sget-object v2, Lcom/snapchat/android/util/ScExecutors;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Lcom/snapchat/android/model/User;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;-><init>(Lcom/snapchat/android/model/UserPrefs;Lcom/snapchat/android/util/bitmap/BitmapRecycling;Ljava/util/concurrent/ExecutorService;Ljavax/inject/Provider;)V

    .line 113
    return-void
.end method

.method constructor <init>(Lcom/snapchat/android/model/UserPrefs;Lcom/snapchat/android/util/bitmap/BitmapRecycling;Ljava/util/concurrent/ExecutorService;Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/UserPrefs;",
            "Lcom/snapchat/android/util/bitmap/BitmapRecycling;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/snapchat/android/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->q:Lcom/snapchat/android/model/UserPrefs;

    .line 105
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->r:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    .line 106
    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->s:Ljava/util/concurrent/ExecutorService;

    .line 107
    iput-object p4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t:Ljavax/inject/Provider;

    .line 108
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;
    .locals 1
    .parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->b()V

    .line 230
    if-nez p1, :cond_0

    .line 231
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    .line 235
    :goto_0
    return-object v0

    .line 232
    :cond_0
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;->b:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    goto :goto_0

    .line 235
    :cond_1
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;->c:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    goto :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;Landroid/graphics/Bitmap;)Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(Landroid/graphics/Bitmap;)Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/util/bitmap/BitmapRecycling;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->r:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    return-object v0
.end method

.method private b(Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 257
    invoke-static {}, Lcom/snapchat/android/util/threading/ThreadUtils;->b()V

    .line 258
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 259
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 260
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 264
    :goto_0
    return v0

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 264
    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 276
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->r()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->x()I

    move-result v2

    .line 279
    invoke-static {v2}, Lcom/snapchat/android/util/NumberFormatUtils;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 282
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    if-lez v2, :cond_0

    .line 284
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c002e

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    if-lez v2, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0174

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v3, v4, v6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 304
    if-nez v0, :cond_0

    move v2, v1

    .line 305
    :goto_0
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 306
    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n:Landroid/content/res/ColorStateList;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 307
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 308
    return-void

    .line 304
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->d()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 305
    goto :goto_1

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->o:Landroid/content/res/ColorStateList;

    goto :goto_2
.end method

.method private k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->r()Ljava/lang/String;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    .line 361
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->t()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_1
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/model/Friend;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/snapchat/android/util/EditNameDialog;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;)Lcom/snapchat/android/util/EditNameDialog;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/EditNameDialog;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;)Lcom/snapchat/android/util/EditNameDialog;

    move-result-object v0

    .line 371
    const v1, 0x7f0c00da

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/snapchat/android/util/LocalizationUtils;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/EditTextDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 372
    invoke-virtual {v0}, Lcom/snapchat/android/ui/EditTextDialog;->show()V

    .line 373
    invoke-virtual {v0}, Lcom/snapchat/android/ui/EditTextDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 374
    return-void
.end method

.method private n()V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->q:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Landroid/widget/ImageView;

    const v1, 0x7f02019f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Landroid/widget/ImageView;

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 425
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    const-string v0, "display_name_source"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 428
    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 430
    :cond_0
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 440
    :pswitch_0
    if-eqz p2, :cond_0

    .line 441
    invoke-virtual {p0, p2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_0
    .end packed-switch
.end method

.method protected b()V
    .locals 2
    .annotation build Lcom/snapchat/android/util/annotations/Trace;
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/User;

    .line 173
    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected c_()Z
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h()V

    .line 270
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i()V

    .line 271
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b()V

    .line 272
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n()V

    .line 273
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 333
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 335
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/addfriends/AddFriendsMenuFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 337
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/addfriends/FriendsContactsToggleFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 338
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    .line 340
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->q:Lcom/snapchat/android/model/UserPrefs;

    invoke-virtual {v0}, Lcom/snapchat/android/model/UserPrefs;->aI()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->q:Lcom/snapchat/android/model/UserPrefs;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/UserPrefs;->e(J)V

    .line 343
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->q:Lcom/snapchat/android/model/UserPrefs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/UserPrefs;->B(Z)V

    .line 345
    :cond_4
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    new-instance v2, Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/settings/SettingsFragment;-><init>()V

    const-class v3, Lcom/snapchat/android/fragments/settings/SettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 347
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 348
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/StartFragmentEvent;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 349
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 350
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ProfileViewFlipEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ProfileViewFlipEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 351
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Landroid/widget/TextView;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 352
    :cond_8
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l()V

    goto/16 :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 404
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 420
    :goto_0
    return-object v0

    .line 406
    :pswitch_0
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 408
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "display_name"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "display_name_source"

    aput-object v1, v3, v0

    .line 410
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 119
    const v0, 0x7f04006e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/View;

    .line 120
    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f0a0255

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f0a0259

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0a0257

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v0, 0x7f0a025a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v0, 0x7f0a025b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v0, 0x7f0a0256

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Landroid/widget/ImageView;

    .line 133
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n()V

    .line 135
    const v0, 0x7f0a0251

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v0, 0x7f0a0252

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    const v0, 0x7f0a0254

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->k:Landroid/widget/ImageView;

    .line 144
    const v0, 0x7f0a0258

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Landroid/widget/ImageView;

    .line 146
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    const v1, 0x7f08005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n:Landroid/content/res/ColorStateList;

    .line 148
    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->o:Landroid/content/res/ColorStateList;

    .line 150
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x4b0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 152
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 247
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDestroyView()V

    .line 248
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->r:Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/BitmapRecycling;->a(Landroid/widget/ImageView;)V

    .line 249
    return-void
.end method

.method public onFriendsWhoAddedMeUpdatedEvent(Lcom/snapchat/android/util/eventbus/FriendsWhoAddedMeUpdatedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d()V

    .line 393
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    return-void
.end method

.method public onProfileImageCacheUpdatedEvent(Lcom/snapchat/android/util/eventbus/ProfileImageCacheUpdatedEvent;)V
    .locals 2
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/snapchat/android/util/eventbus/ProfileImageCacheUpdatedEvent;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "snaptag"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b()V

    .line 400
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 163
    invoke-static {}, Lcom/snapchat/android/util/debug/TimeLogger;->a()V

    .line 164
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 166
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d()V

    .line 167
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c_()Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->d:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->e:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->t:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->bl:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    :cond_2
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStart()V

    .line 158
    invoke-static {p0}, Lcom/snapchat/android/model/UserPrefs;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 159
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStop()V

    .line 242
    invoke-static {p0}, Lcom/snapchat/android/model/UserPrefs;->b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 243
    return-void
.end method

.method public onUserLoadedEvent(Lcom/snapchat/android/util/eventbus/UserLoadedEvent;)V
    .locals 0
    .parameter
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d()V

    .line 388
    return-void
.end method
