.class public abstract Lcom/snapchat/android/database/table/SnapbryoTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/model/AnnotatedMediabryo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 91
    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/AnnotatedMediabryo;)Landroid/content/ContentValues;
    .locals 5
    .parameter

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 52
    :cond_0
    new-instance v1, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->I()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    .line 54
    :goto_1
    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->a:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 55
    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->O()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 56
    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->c:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 57
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->d:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 58
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->e:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 63
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->J()Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    move-result-object v0

    .line 64
    sget-object v2, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->UPLOADING:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->WILL_UPLOAD_AFTER_SAVE:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    if-ne v0, v2, :cond_2

    .line 66
    :cond_1
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    .line 68
    :cond_2
    sget-object v2, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->f:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->ordinal()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 70
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->g:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->K()Lcom/snapchat/android/model/Mediabryo$SendStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/Mediabryo$SendStatus;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 71
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->h:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->L()Lcom/snapchat/android/model/Mediabryo$PostStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/Mediabryo$PostStatus;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 72
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->i:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->c()Z

    move-result v2

    invoke-static {v2}, Lcom/snapchat/android/database/table/SnapbryoTable;->a(Z)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 73
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->j:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->n()Z

    move-result v2

    invoke-static {v2}, Lcom/snapchat/android/database/table/SnapbryoTable;->a(Z)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 74
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->k:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->m()D

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;D)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 75
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->l:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 76
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->m:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->o()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 77
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->n:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->q()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 78
    sget-object v0, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->o:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->P()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Z)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 79
    invoke-virtual {v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto/16 :goto_0

    .line 53
    :cond_3
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->I()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/SnapbryoTable;->a(Lcom/snapchat/android/model/AnnotatedMediabryo;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/snapchat/android/model/AnnotatedMediabryo;
    .locals 4
    .parameter

    .prologue
    .line 27
    new-instance v0, Lcom/snapchat/android/model/Snapbryo$Builder;

    invoke-direct {v0}, Lcom/snapchat/android/model/Snapbryo$Builder;-><init>()V

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->a:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->b(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->c:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->c(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->d:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->d(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->e:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->e(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->f:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->a(I)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->g:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->b(I)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->h:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->c(I)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->i:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/database/table/SnapbryoTable;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->c(Z)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->j:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/database/table/SnapbryoTable;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->d(Z)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->k:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/model/Snapbryo$Builder;->a(D)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->l:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->f(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->m:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->g(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->n:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->h(Ljava/lang/String;)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->o:Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    invoke-virtual {v1}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/database/table/SnapbryoTable;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Snapbryo$Builder;->e(Z)Lcom/snapchat/android/model/Snapbryo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/Snapbryo$Builder;->a()Lcom/snapchat/android/model/Snapbryo;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/SnapbryoTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/model/AnnotatedMediabryo;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 84
    const-string v1, "_id INTEGER PRIMARY KEY"

    .line 85
    invoke-static {}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->values()[Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->a(Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->b(Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-object v1
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;->values()[Lcom/snapchat/android/database/table/SnapbryoTable$SnapbryoSchema;

    move-result-object v0

    return-object v0
.end method
