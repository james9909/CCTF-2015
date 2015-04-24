.class public Lcom/snapchat/android/util/SnapUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/snapchat/android/model/User;Lcom/snapchat/android/model/AnnotatedMediabryo;)Lcom/snapchat/android/model/SentSnap;
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 181
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :cond_1
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->E()Ljava/lang/String;

    move-result-object v2

    .line 185
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snapchat/android/util/chat/ChatUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v1}, Lcom/snapchat/android/chat/ConversationUtils;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/chat/ChatConversation;->c(Ljava/lang/String;)Lcom/snapchat/android/model/SentSnap;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(I)Lcom/snapchat/android/model/Snap$ClientSnapStatus;
    .locals 1
    .parameter

    .prologue
    .line 141
    packed-switch p0, :pswitch_data_0

    .line 148
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    :goto_0
    return-object v0

    .line 144
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->UNVIEWED_AND_LOAD_STATE_TBD:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/snapchat/data/gson/GenericSnap;)Lcom/snapchat/android/model/Snap;
    .locals 45
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->q()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->m()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/snapchat/android/util/SnapUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->t()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Long;)J

    move-result-wide v4

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->u()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Long;)J

    move-result-wide v6

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->s()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Integer;)I

    move-result v8

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->r()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Integer;)I

    move-result v10

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->v()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v9

    .line 70
    const/4 v2, 0x3

    if-ne v10, v2, :cond_1

    const/16 v39, 0x1

    .line 72
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->a()Ljava/lang/String;

    move-result-object v11

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->m()Ljava/lang/String;

    move-result-object v25

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->c()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->c()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 83
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->d()Ljava/lang/String;

    move-result-object v14

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->f()Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Long;)J

    move-result-wide v15

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->e()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Double;)D

    move-result-wide v17

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Integer;)I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_4

    const/4 v2, 0x1

    .line 88
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->h()Ljava/lang/String;

    move-result-object v19

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->j()Ljava/lang/String;

    move-result-object v20

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->i()Ljava/lang/String;

    move-result-object v21

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->k()Ljava/lang/Boolean;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v22

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->p()Ljava/lang/Boolean;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v26

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->o()Ljava/lang/Boolean;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/snapchat/android/util/PrimitiveUtils;->a(Ljava/lang/Boolean;)Z

    move-result v27

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->l()Ljava/lang/String;

    move-result-object v23

    .line 98
    if-eqz v11, :cond_6

    .line 99
    invoke-static {v10}, Lcom/snapchat/android/util/SnapUtils;->a(I)Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v10

    .line 100
    if-eqz v27, :cond_0

    .line 101
    sget-object v24, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_VIEWED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-object/from16 v0, v24

    if-ne v10, v0, :cond_0

    .line 102
    sget-object v10, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->RECEIVED_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 105
    :cond_0
    if-eqz v2, :cond_5

    .line 106
    new-instance v2, Lcom/snapchat/android/model/BroadcastSnap;

    invoke-direct/range {v2 .. v23}, Lcom/snapchat/android/model/BroadcastSnap;-><init>(Ljava/lang/String;JJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;JDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 126
    :goto_3
    return-object v2

    .line 70
    :cond_1
    const/16 v39, 0x0

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->b()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/snapchat/data/gson/GenericSnap;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v12, v2

    goto :goto_1

    .line 80
    :cond_3
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 87
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 110
    :cond_5
    new-instance v24, Lcom/snapchat/android/model/ReceivedSnap;

    move-object/from16 v25, v3

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    move-wide/from16 v30, v4

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-wide/from16 v36, v12

    move-object/from16 v38, v14

    move-wide/from16 v40, v15

    move-wide/from16 v42, v17

    move-object/from16 v44, v23

    invoke-direct/range {v24 .. v44}, Lcom/snapchat/android/model/ReceivedSnap;-><init>(Ljava/lang/String;JJJIZLcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;DLjava/lang/String;ZJDLjava/lang/String;)V

    move-object/from16 v2, v24

    goto :goto_3

    .line 113
    :cond_6
    if-eqz v25, :cond_a

    .line 114
    invoke-static {v10}, Lcom/snapchat/android/util/SnapUtils;->b(I)Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-result-object v17

    .line 115
    if-eqz v26, :cond_8

    .line 116
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->PENDING:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    .line 124
    :cond_7
    :goto_4
    new-instance v9, Lcom/snapchat/android/model/SentSnap;

    move-object v10, v3

    move-object/from16 v11, v24

    move-wide v12, v4

    move-wide v14, v6

    move/from16 v16, v8

    move-object/from16 v18, v25

    invoke-direct/range {v9 .. v18}, Lcom/snapchat/android/model/SentSnap;-><init>(Ljava/lang/String;Ljava/lang/String;JJILcom/snapchat/android/model/Snap$ClientSnapStatus;Ljava/lang/String;)V

    move-object v2, v9

    goto :goto_3

    .line 117
    :cond_8
    if-eqz v27, :cond_7

    .line 118
    sget-object v2, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    move-object/from16 v0, v17

    if-ne v0, v2, :cond_9

    .line 119
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_4

    .line 121
    :cond_9
    sget-object v17, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_REPLAYED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_4

    .line 126
    :cond_a
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public static a(Lcom/snapchat/android/fragments/stories/StoriesListItem;)Lcom/snapchat/android/model/StoryCollection;
    .locals 2
    .parameter
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 271
    instance-of v0, p0, Lcom/snapchat/android/model/RecentStoryCollection;

    if-eqz v0, :cond_0

    .line 272
    check-cast p0, Lcom/snapchat/android/model/StoryCollection;

    .line 279
    :goto_0
    return-object p0

    .line 273
    :cond_0
    instance-of v0, p0, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_1

    .line 274
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-interface {p0}, Lcom/snapchat/android/fragments/stories/StoriesListItem;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->c(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object p0

    goto :goto_0

    .line 275
    :cond_1
    instance-of v0, p0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    if-eqz v0, :cond_2

    .line 276
    check-cast p0, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;

    .line 277
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/stories/StoryGroupStoriesListItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/StoryLibrary;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object p0

    goto :goto_0

    .line 279
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/snapchat/android/model/StorySnap;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    .line 169
    if-nez v0, :cond_0

    move-object v0, v1

    .line 176
    :goto_0
    return-object v0

    .line 170
    :cond_0
    invoke-static {}, Lcom/snapchat/android/model/StoryLibrary;->a()Lcom/snapchat/android/model/StoryLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryLibrary;->m()Ljava/util/Collection;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StoryCollection;

    .line 172
    invoke-virtual {v0}, Lcom/snapchat/android/model/StoryCollection;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/StorySnap;

    .line 173
    invoke-virtual {v0}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 176
    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 133
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 137
    :cond_0
    return-object p0
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/StorySnapLogbook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/AnnotatedMediabryo;

    .line 264
    new-instance v3, Lcom/snapchat/android/model/StorySnapLogbook;

    invoke-direct {v3, v0}, Lcom/snapchat/android/model/StorySnapLogbook;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_0
    return-object v1
.end method

.method public static a()V
    .locals 6

    .prologue
    .line 207
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v1

    .line 208
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 209
    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v4

    .line 210
    monitor-enter v4

    .line 211
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 212
    instance-of v2, v1, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->G()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->au()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    :cond_1
    check-cast v1, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v1}, Lcom/snapchat/android/model/ReceivedSnap;->r()V

    goto :goto_1

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    :cond_3
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/ReceivedSnap;)V
    .locals 6
    .parameter

    .prologue
    .line 224
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 226
    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v2

    .line 227
    monitor-enter v2

    .line 228
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 229
    instance-of v4, v0, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v4, :cond_0

    .line 230
    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    .line 231
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->au()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->F()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/snapchat/android/model/ReceivedSnap;->r()V

    goto :goto_1

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 239
    :cond_2
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/StorySnap;)V
    .locals 8
    .parameter

    .prologue
    .line 193
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->e()Ljava/util/Map;

    move-result-object v1

    .line 195
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 196
    :goto_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/model/StoryViewRecord;

    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/snapchat/android/model/StorySnap;->L()J

    move-result-wide v6

    invoke-direct {v3, v4, v6, v7, v0}, Lcom/snapchat/android/model/StoryViewRecord;-><init>(Ljava/lang/String;JI)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/snapchat/android/model/StoryViewRecord;)V
    .locals 2
    .parameter

    .prologue
    .line 201
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->e()Ljava/util/Map;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lcom/snapchat/android/model/StoryViewRecord;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method public static a(Lcom/snapchat/android/model/Mediabryo;)Z
    .locals 3
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0}, Lcom/snapchat/android/model/Mediabryo;->b()I

    move-result v1

    .line 296
    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/snapchat/android/model/ReceivedSnap;)I
    .locals 4
    .parameter

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->M()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/snapchat/android/model/ReceivedSnap;->N()D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 258
    double-to-int v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method private static b(I)Lcom/snapchat/android/model/Snap$ClientSnapStatus;
    .locals 1
    .parameter

    .prologue
    .line 153
    packed-switch p0, :pswitch_data_0

    .line 163
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_OPENED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    :goto_0
    return-object v0

    .line 155
    :pswitch_0
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_0

    .line 157
    :pswitch_1
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->DELIVERED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_0

    .line 159
    :pswitch_2
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_OPENED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_0

    .line 161
    :pswitch_3
    sget-object v0, Lcom/snapchat/android/model/Snap$ClientSnapStatus;->SENT_AND_SCREENSHOTTED:Lcom/snapchat/android/model/Snap$ClientSnapStatus;

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x72

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_1

    .line 289
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 291
    :cond_1
    return-object p0
.end method

.method public static b()V
    .locals 6

    .prologue
    .line 242
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversationManager;->d()Ljava/util/List;

    move-result-object v1

    .line 243
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatConversation;

    .line 244
    invoke-virtual {v1}, Lcom/snapchat/android/model/chat/ChatConversation;->t()Ljava/util/List;

    move-result-object v4

    .line 245
    monitor-enter v4

    .line 246
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snapchat/android/model/chat/ChatFeedItem;

    .line 247
    instance-of v2, v1, Lcom/snapchat/android/model/ReceivedSnap;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/snapchat/android/model/ReceivedSnap;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/snapchat/android/model/ReceivedSnap;->au()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    check-cast v1, Lcom/snapchat/android/model/ReceivedSnap;

    invoke-virtual {v1}, Lcom/snapchat/android/model/ReceivedSnap;->r()V

    goto :goto_1

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    :cond_2
    return-void
.end method
