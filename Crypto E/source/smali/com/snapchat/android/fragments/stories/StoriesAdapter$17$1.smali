.class Lcom/snapchat/android/fragments/stories/StoriesAdapter$17$1;
.super Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Ljava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17$1;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17$1;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;-><init>(Lcom/snapchat/android/fragments/stories/StoriesAdapter;Lcom/snapchat/android/model/FriendAction;Lcom/snapchat/android/model/Friend;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/snapchat/android/fragments/stories/StoriesListItemViewHolder;Lcom/snapchat/android/fragments/stories/StoriesAdapter$1;)V

    return-void
.end method


# virtual methods
.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 675
    invoke-super {p0, p1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesFriendActionTask;->b(Lcom/snapchat/android/model/server/ServerResponse;)V

    .line 676
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17$1;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->a:Lcom/snapchat/android/model/Friend;

    iget-object v1, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/Friend;->d(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17$1;->b:Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;

    iget-object v0, v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$17;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/stories/StoriesAdapter;->a()V

    .line 678
    return-void
.end method
