.class Lcom/snapchat/android/util/debug/BugReportFragment$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/debug/BugReportFragment;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/util/debug/BugReportFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->m(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->l(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 319
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->a(Lcom/snapchat/android/util/debug/BugReportFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->b(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->f(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->d(Lcom/snapchat/android/util/debug/BugReportFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->n(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->n(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 308
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->o(Lcom/snapchat/android/util/debug/BugReportFragment;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v8, v0, [Ljava/io/File;

    .line 309
    const/4 v0, 0x0

    :goto_3
    array-length v1, v8

    if-ge v0, v1, :cond_3

    .line 310
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v3}, Lcom/snapchat/android/util/debug/BugReportFragment;->o(Lcom/snapchat/android/util/debug/BugReportFragment;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    aput-object v1, v8, v0

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 303
    :cond_1
    const-string v2, "null"

    goto :goto_1

    .line 306
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 313
    :cond_3
    new-instance v0, Lcom/snapchat/android/util/debug/ManiphestAdapter;

    invoke-direct {v0}, Lcom/snapchat/android/util/debug/ManiphestAdapter;-><init>()V

    .line 314
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    iget-object v3, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v3}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/snapchat/android/util/debug/BugReportFragment;->a(Lcom/snapchat/android/util/debug/BugReportFragment;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v3}, Lcom/snapchat/android/util/debug/BugReportFragment;->p(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v5}, Lcom/snapchat/android/util/debug/BugReportFragment;->j(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v6}, Lcom/snapchat/android/util/debug/BugReportFragment;->m(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v8}, Lcom/snapchat/android/util/debug/ManiphestAdapter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/io/File;)V

    .line 318
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment$9;->a:Lcom/snapchat/android/util/debug/BugReportFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method
