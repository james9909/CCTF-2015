.class public Lcom/snapchat/android/dev/DbBrowserActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/widget/DrawerLayout;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/snapchat/android/dev/DbBrowserAdapter;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

.field private i:Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 49
    sget-object v0, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->v:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    iput-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->h:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->i:Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    .line 268
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/dev/DbBrowserActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 5
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v4, 0x2

    .line 211
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->b:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 213
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->b:Landroid/widget/ListView;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAlpha(F)V

    .line 223
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->b:Landroid/widget/ListView;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 217
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->b:Landroid/widget/ListView;

    const-string v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 218
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 219
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 220
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 221
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 217
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private a(Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->h:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->i:Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    .line 120
    return-void
.end method

.method private a(Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;)V
    .locals 1
    .parameter

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->h:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    .line 124
    iput-object p1, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->i:Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/dev/DbBrowserActivity;Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/snapchat/android/dev/DbBrowserActivity;->a(Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/dev/DbBrowserActivity;Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/snapchat/android/dev/DbBrowserActivity;->a(Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;)V

    return-void
.end method

.method private a([Lcom/snapchat/android/database/schema/Schema;)V
    .locals 5
    .parameter

    .prologue
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    const-string v0, "Schema\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 200
    invoke-interface {v3}, Lcom/snapchat/android/database/schema/Schema;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-interface {v3}, Lcom/snapchat/android/database/schema/Schema;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v4, " : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-interface {v3}, Lcom/snapchat/android/database/schema/Schema;->a()Lcom/snapchat/android/database/DataType;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method

.method private b(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 234
    if-nez p1, :cond_1

    .line 235
    const/4 p1, 0x0

    .line 262
    :cond_0
    :goto_0
    return-object p1

    .line 238
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    const-string v2, "_id"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 244
    const-string v0, "_id"

    aput-object v0, v4, v1

    move v0, v1

    .line 245
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 246
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    :cond_2
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 250
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 252
    :goto_2
    array-length v2, v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 253
    add-int/lit8 v2, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    move v0, v1

    .line 255
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 256
    add-int/lit8 v6, v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 258
    :cond_3
    invoke-virtual {v3, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 259
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move-object p1, v3

    .line 262
    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method static synthetic b(Lcom/snapchat/android/dev/DbBrowserActivity;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->a:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/snapchat/android/dev/DbBrowserActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 129
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 130
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 6
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
    const/16 v5, 0x8

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 158
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/snapchat/android/dev/DbBrowserActivity;->a(Landroid/database/Cursor;)V

    .line 161
    if-eqz p2, :cond_0

    .line 162
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 163
    iget-object v2, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->h:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    if-eqz v2, :cond_3

    .line 164
    iget-object v2, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->h:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    if-nez v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->h:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->a()Lcom/snapchat/android/database/table/DbTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/DbTable;->d()[Lcom/snapchat/android/database/schema/Schema;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/snapchat/android/dev/DbBrowserActivity;->a([Lcom/snapchat/android/database/schema/Schema;)V

    .line 188
    :cond_0
    :goto_1
    invoke-direct {p0, p2}, Lcom/snapchat/android/dev/DbBrowserActivity;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->e:Lcom/snapchat/android/dev/DbBrowserAdapter;

    instance-of v3, v1, Landroid/database/MatrixCursor;

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/snapchat/android/dev/DbBrowserAdapter;->a(Z)V

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->e:Lcom/snapchat/android/dev/DbBrowserAdapter;

    invoke-direct {p0, v1}, Lcom/snapchat/android/dev/DbBrowserActivity;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/dev/DbBrowserAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 174
    :cond_3
    iget-object v2, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->i:Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->i:Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    invoke-virtual {v4}, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    if-nez v1, :cond_4

    .line 178
    iget-object v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->i:Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    invoke-virtual {v1}, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->a()Lcom/snapchat/android/database/vtable/DbVirtualTable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/database/vtable/DbVirtualTable;->c()[Lcom/snapchat/android/database/schema/Schema;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/snapchat/android/dev/DbBrowserActivity;->a([Lcom/snapchat/android/database/schema/Schema;)V

    goto :goto_1

    .line 182
    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/snapchat/android/dev/DbBrowserActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 134
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f04003e

    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f04003c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/dev/DbBrowserActivity;->setContentView(I)V

    .line 57
    const v0, 0x7f0a016a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/dev/DbBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->a:Landroid/support/v4/widget/DrawerLayout;

    .line 58
    const v0, 0x7f0a016d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/dev/DbBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->b:Landroid/widget/ListView;

    .line 59
    const v0, 0x7f0a016c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/dev/DbBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->g:Landroid/widget/TextView;

    .line 60
    new-instance v0, Lcom/snapchat/android/dev/DbBrowserAdapter;

    invoke-direct {v0, p0}, Lcom/snapchat/android/dev/DbBrowserAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->e:Lcom/snapchat/android/dev/DbBrowserAdapter;

    .line 61
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->e:Lcom/snapchat/android/dev/DbBrowserAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    const v0, 0x7f0a0170

    invoke-virtual {p0, v0}, Lcom/snapchat/android/dev/DbBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->c:Landroid/widget/ListView;

    .line 63
    const v0, 0x7f0a016b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/dev/DbBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->f:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/dev/DbBrowserActivity$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/dev/DbBrowserActivity$1;-><init>(Lcom/snapchat/android/dev/DbBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v0, 0x7f0a0173

    invoke-virtual {p0, v0}, Lcom/snapchat/android/dev/DbBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->d:Landroid/widget/ListView;

    .line 75
    new-instance v1, Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;

    invoke-static {}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->values()[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, p0, p0, v3, v0}, Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;-><init>(Lcom/snapchat/android/dev/DbBrowserActivity;Landroid/content/Context;ILjava/util/List;)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->c:Landroid/widget/ListView;

    new-instance v2, Lcom/snapchat/android/dev/DbBrowserActivity$2;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/dev/DbBrowserActivity$2;-><init>(Lcom/snapchat/android/dev/DbBrowserActivity;Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    new-instance v1, Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;

    invoke-static {}, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->values()[Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, p0, p0, v3, v0}, Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;-><init>(Lcom/snapchat/android/dev/DbBrowserActivity;Landroid/content/Context;ILjava/util/List;)V

    .line 97
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->d:Landroid/widget/ListView;

    new-instance v2, Lcom/snapchat/android/dev/DbBrowserActivity$3;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/dev/DbBrowserActivity$3;-><init>(Lcom/snapchat/android/dev/DbBrowserActivity;Lcom/snapchat/android/dev/DbBrowserActivity$DrawerListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/snapchat/android/dev/DbBrowserActivity;->a()V

    .line 114
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->a:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 115
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
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
    .line 139
    packed-switch p1, :pswitch_data_0

    .line 149
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->h:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Lcom/snapchat/android/dev/SimpleCursorLoader;

    iget-object v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->h:Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->a()Lcom/snapchat/android/database/table/DbTable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/dev/SimpleCursorLoader;-><init>(Landroid/content/Context;Lcom/snapchat/android/database/table/DbTable;)V

    goto :goto_0

    .line 144
    :cond_0
    new-instance v0, Lcom/snapchat/android/dev/SimpleCursorLoader;

    iget-object v1, p0, Lcom/snapchat/android/dev/DbBrowserActivity;->i:Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;

    invoke-virtual {v1}, Lcom/snapchat/android/database/vtable/DbVirtualTable$DatabaseVirtualTable;->a()Lcom/snapchat/android/database/vtable/DbVirtualTable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/dev/SimpleCursorLoader;-><init>(Landroid/content/Context;Lcom/snapchat/android/database/vtable/DbVirtualTable;)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/dev/DbBrowserActivity;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 227
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->reset()V

    .line 228
    return-void
.end method
