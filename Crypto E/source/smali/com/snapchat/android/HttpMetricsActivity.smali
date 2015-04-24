.class public Lcom/snapchat/android/HttpMetricsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/AbsListView;

.field private b:Lcom/snapchat/android/HttpMetricsCursorAdapter;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->b:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/snapchat/android/HttpMetricsActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 79
    const/16 v1, 0x384

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 80
    return-void
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
    .line 103
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 105
    :pswitch_0
    if-eqz p2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->b:Lcom/snapchat/android/HttpMetricsCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/HttpMetricsCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
    .end packed-switch
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/snapchat/android/HttpMetricsActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 84
    const/16 v1, 0x384

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 85
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->b:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->h:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/snapchat/android/HttpMetricsActivity;->b()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->g:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->h:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/snapchat/android/HttpMetricsActivity;->b()V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->f:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->h:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lcom/snapchat/android/HttpMetricsActivity;->b()V

    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/snapchat/android/database/schema/HttpMetricSchema;->e:Lcom/snapchat/android/database/schema/HttpMetricSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/schema/HttpMetricSchema;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->h:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/snapchat/android/HttpMetricsActivity;->b()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f040058

    invoke-virtual {p0, v0}, Lcom/snapchat/android/HttpMetricsActivity;->setContentView(I)V

    .line 37
    const v0, 0x7f0a01f7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/HttpMetricsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->a:Landroid/widget/AbsListView;

    .line 38
    new-instance v0, Lcom/snapchat/android/HttpMetricsCursorAdapter;

    invoke-direct {v0, p0}, Lcom/snapchat/android/HttpMetricsCursorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->b:Lcom/snapchat/android/HttpMetricsCursorAdapter;

    .line 39
    const v0, 0x7f0a01f6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/HttpMetricsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->c:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/HttpMetricsActivity$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/HttpMetricsActivity$1;-><init>(Lcom/snapchat/android/HttpMetricsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v0, 0x7f0a01f2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/HttpMetricsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->d:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f0a01f3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/HttpMetricsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->e:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f0a01f5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/HttpMetricsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->f:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v0, 0x7f0a01f4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/HttpMetricsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->g:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/snapchat/android/HttpMetricsActivity;->a:Landroid/widget/AbsListView;

    iget-object v1, p0, Lcom/snapchat/android/HttpMetricsActivity;->b:Lcom/snapchat/android/HttpMetricsCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    invoke-virtual {p0}, Lcom/snapchat/android/HttpMetricsActivity;->a()V

    .line 58
    return-void
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

    .line 89
    packed-switch p1, :pswitch_data_0

    move-object v0, v4

    .line 96
    :goto_0
    return-object v0

    .line 91
    :pswitch_0
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    sget-object v2, Lcom/snapchat/android/content/SnapchatProvider;->a:Landroid/net/Uri;

    sget-object v3, Lcom/snapchat/android/database/table/HttpMetricsTable;->a:[Ljava/lang/String;

    iget-object v6, p0, Lcom/snapchat/android/HttpMetricsActivity;->h:Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/HttpMetricsActivity;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 116
    return-void
.end method
