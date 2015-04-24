.class public abstract Lcom/snapchat/android/database/table/StorySnapTable;
.super Lcom/snapchat/android/database/table/DbTable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/database/table/DbTable",
        "<",
        "Lcom/snapchat/android/model/StorySnap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/snapchat/android/database/table/DbTable;-><init>()V

    .line 149
    return-void
.end method


# virtual methods
.method protected a(Lcom/snapchat/android/model/StorySnap;)Landroid/content/ContentValues;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    if-nez p1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    .line 79
    :cond_0
    new-instance v2, Lcom/snapchat/android/database/table/ContentValuesBuilder;

    invoke-direct {v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;-><init>()V

    .line 80
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->a:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 81
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->ay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 82
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->c:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->az()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 83
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->d:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->ae()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 84
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->e:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->ao()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 85
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->f:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->ax()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 86
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->g:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->aA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 88
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->al()Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v0

    .line 89
    sget-object v3, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->h:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 91
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->i:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->aB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 92
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->j:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->M()D

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;D)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 94
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->aD()Lcom/snapchat/android/model/server/CaptionParameters;

    move-result-object v3

    .line 95
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->ab()Ljava/lang/String;

    move-result-object v0

    .line 97
    if-nez v3, :cond_5

    .line 98
    sget-object v3, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->k:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 99
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->l:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 100
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->m:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 108
    :goto_2
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->n:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->F()Z

    move-result v3

    invoke-static {v3}, Lcom/snapchat/android/database/table/StorySnapTable;->a(Z)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 109
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->o:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->H()Z

    move-result v3

    invoke-static {v3}, Lcom/snapchat/android/database/table/StorySnapTable;->a(Z)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 110
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->p:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->L()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 112
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    .line 114
    :cond_2
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->q:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 120
    :goto_3
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->r:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->aE()Z

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/database/table/StorySnapTable;->a(Z)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 121
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->s:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->k()Z

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/database/table/StorySnapTable;->a(Z)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 122
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->t:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 123
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->u:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->aH()Z

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/database/table/StorySnapTable;->a(Z)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 124
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->v:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->aI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 125
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->w:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->aJ()Z

    move-result v1

    invoke-static {v1}, Lcom/snapchat/android/database/table/StorySnapTable;->a(Z)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 126
    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->f()Lcom/snapchat/android/model/SponsoredStoryMetadata;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    sget-object v1, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->x:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SponsoredStoryMetadata;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 129
    sget-object v1, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->y:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SponsoredStoryMetadata;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 130
    sget-object v1, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->z:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SponsoredStoryMetadata;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 131
    sget-object v1, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->A:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v0}, Lcom/snapchat/android/model/SponsoredStoryMetadata;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 133
    :cond_3
    invoke-virtual {v2}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a()Landroid/content/ContentValues;

    move-result-object v0

    goto/16 :goto_0

    .line 89
    :cond_4
    invoke-virtual {v0}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 102
    :cond_5
    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->k:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    if-nez v0, :cond_6

    invoke-virtual {v3}, Lcom/snapchat/android/model/server/CaptionParameters;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {v2, v4, v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;Ljava/lang/String;)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 104
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->l:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/model/server/CaptionParameters;->getOrientation()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;J)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    .line 105
    sget-object v0, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->m:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/model/server/CaptionParameters;->getPosition()D

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;D)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    goto/16 :goto_2

    .line 116
    :cond_7
    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 117
    :goto_4
    sget-object v1, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->q:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-static {v0}, Lcom/snapchat/android/database/table/StorySnapTable;->a(Z)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/snapchat/android/database/table/ContentValuesBuilder;->a(Lcom/snapchat/android/database/schema/Schema;I)Lcom/snapchat/android/database/table/ContentValuesBuilder;

    goto/16 :goto_3

    :cond_8
    move v0, v1

    .line 116
    goto :goto_4
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 1
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/snapchat/android/model/StorySnap;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/StorySnapTable;->a(Lcom/snapchat/android/model/StorySnap;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Lcom/snapchat/android/model/StorySnap;
    .locals 26
    .parameter

    .prologue
    .line 26
    new-instance v2, Lcom/snapchat/android/model/StorySnap;

    sget-object v3, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->a:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->c:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->d:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v6}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sget-object v8, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->p:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v8}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    sget-object v10, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->e:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v10}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    sget-object v11, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->f:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v11}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->g:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v12}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->h:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v13}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->a(Ljava/lang/String;)Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v13

    sget-object v14, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->i:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v14}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->j:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v15}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    sget-object v16, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->k:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v16 .. v16}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->l:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v17 .. v17}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    sget-object v18, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->m:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v18 .. v18}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    sget-object v19, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->n:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v19 .. v19}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/snapchat/android/database/table/StorySnapTable;->a(I)Z

    move-result v19

    sget-object v20, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->o:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v20 .. v20}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/snapchat/android/database/table/StorySnapTable;->a(I)Z

    move-result v20

    sget-object v21, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->r:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v21 .. v21}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/snapchat/android/database/table/StorySnapTable;->a(I)Z

    move-result v21

    sget-object v22, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->s:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v22 .. v22}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/snapchat/android/database/table/StorySnapTable;->a(I)Z

    move-result v22

    sget-object v23, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->t:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v23 .. v23}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->u:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v24 .. v24}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v24

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/snapchat/android/database/table/StorySnapTable;->a(I)Z

    move-result v24

    sget-object v25, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->w:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual/range {v25 .. v25}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/snapchat/android/database/table/StorySnapTable;->a(I)Z

    move-result v25

    invoke-direct/range {v2 .. v25}, Lcom/snapchat/android/model/StorySnap;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;Lcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;ILjava/lang/String;IIZZZZLjava/lang/String;ZZ)V

    .line 50
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v4

    .line 51
    if-eqz v4, :cond_0

    sget-object v3, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->q:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/snapchat/android/database/table/StorySnapTable;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    new-instance v5, Lcom/snapchat/android/model/StoryViewRecord;

    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->L()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->H()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    invoke-direct {v5, v6, v8, v9, v3}, Lcom/snapchat/android/model/StoryViewRecord;-><init>(Ljava/lang/String;JI)V

    .line 54
    invoke-virtual {v4}, Lcom/snapchat/android/model/User;->e()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    sget-object v3, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->v:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Lcom/snapchat/android/model/StorySnap;->f(Ljava/lang/String;)V

    .line 61
    :cond_1
    sget-object v3, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->x:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v3}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    new-instance v4, Lcom/snapchat/android/model/SponsoredStoryMetadata;

    sget-object v5, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->y:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->z:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v6}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->A:Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    invoke-virtual {v7}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b()I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/snapchat/android/model/SponsoredStoryMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2, v4}, Lcom/snapchat/android/model/StorySnap;->a(Lcom/snapchat/android/model/SponsoredStoryMetadata;)V

    .line 70
    :cond_2
    return-object v2

    .line 52
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected synthetic b(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/snapchat/android/database/table/StorySnapTable;->a(Landroid/database/Cursor;)Lcom/snapchat/android/model/StorySnap;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 138
    const-string v1, "_id INTEGER PRIMARY KEY"

    .line 139
    invoke-static {}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->values()[Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->a(Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->b(Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;)Lcom/snapchat/android/database/DataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/DataType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-object v1
.end method

.method public d()[Lcom/snapchat/android/database/schema/Schema;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;->values()[Lcom/snapchat/android/database/table/StorySnapTable$StorySnapSchema;

    move-result-object v0

    return-object v0
.end method
