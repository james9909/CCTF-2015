.class public abstract Lcom/snapchat/android/model/Mediabryo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/Mediabryo$PostStatus;,
        Lcom/snapchat/android/model/Mediabryo$SendStatus;,
        Lcom/snapchat/android/model/Mediabryo$UploadStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snapchat/android/model/Mediabryo;",
        ">;"
    }
.end annotation


# instance fields
.field protected mClientId:Ljava/lang/String;

.field private mPostStatus:Lcom/snapchat/android/model/Mediabryo$PostStatus;

.field private mRawImageBitmap:Landroid/graphics/Bitmap;

.field private mRecipients:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private mRetried:Z

.field private mSendStatus:Lcom/snapchat/android/model/Mediabryo$SendStatus;

.field private mTime:Ljava/util/Date;

.field private mUploadStatus:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

.field private mVideoUri:Landroid/net/Uri;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mTime:Ljava/util/Date;

    .line 87
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->NOT_UPLOADED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mUploadStatus:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    .line 88
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$SendStatus;->UNSENT:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mSendStatus:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    .line 89
    sget-object v0, Lcom/snapchat/android/model/Mediabryo$PostStatus;->NOT_POSTED:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mPostStatus:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mRetried:Z

    .line 91
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/Mediabryo;-><init>(Ljava/lang/String;)V

    .line 95
    iput-object p2, p0, Lcom/snapchat/android/model/Mediabryo;->mTime:Ljava/util/Date;

    .line 96
    return-void
.end method


# virtual methods
.method public D()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mRecipients:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 5

    .prologue
    .line 119
    const-string v1, ""

    .line 120
    const-string v0, ""

    .line 121
    iget-object v2, p0, Lcom/snapchat/android/model/Mediabryo;->mRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    const-string v0, ", "

    move-object v2, v1

    move-object v1, v0

    .line 124
    goto :goto_0

    .line 125
    :cond_0
    return-object v2
.end method

.method public F()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lcom/snapchat/android/model/Mediabryo;->mRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 132
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 133
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    return-object v2
.end method

.method public G()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public H()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-static {}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a()Lcom/snapchat/android/util/bitmap/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/BitmapPool;->a(Landroid/graphics/Bitmap;)V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public I()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public J()Lcom/snapchat/android/model/Mediabryo$UploadStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mUploadStatus:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    return-object v0
.end method

.method public K()Lcom/snapchat/android/model/Mediabryo$SendStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mSendStatus:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    return-object v0
.end method

.method public L()Lcom/snapchat/android/model/Mediabryo$PostStatus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mPostStatus:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    return-object v0
.end method

.method public M()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 198
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lcom/snapchat/android/chat/ConversationUtils;->b(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v3

    .line 200
    if-eqz v3, :cond_0

    .line 201
    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatConversation;->X()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 205
    :cond_1
    return-object v1
.end method

.method public N()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public O()Ljava/util/Date;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mTime:Ljava/util/Date;

    return-object v0
.end method

.method public P()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/snapchat/android/model/Mediabryo;->mRetried:Z

    return v0
.end method

.method public a(Landroid/content/Context;)I
    .locals 1
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 164
    invoke-static {p1}, Lcom/snapchat/android/util/ViewUtils;->c(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/snapchat/android/model/Mediabryo;)I
    .locals 2
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mTime:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Mediabryo;->O()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/snapchat/android/model/Mediabryo;->mVideoUri:Landroid/net/Uri;

    .line 154
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Mediabryo$PostStatus;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/snapchat/android/model/Mediabryo;->mPostStatus:Lcom/snapchat/android/model/Mediabryo$PostStatus;

    .line 187
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Mediabryo$SendStatus;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/snapchat/android/model/Mediabryo;->mSendStatus:Lcom/snapchat/android/model/Mediabryo$SendStatus;

    .line 178
    return-void
.end method

.method public a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V
    .locals 0
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/snapchat/android/model/Mediabryo;->mUploadStatus:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    .line 169
    return-void
.end method

.method public a(Ljava/util/LinkedHashSet;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/snapchat/android/model/Mediabryo;->mRecipients:Ljava/util/LinkedHashSet;

    .line 100
    return-void
.end method

.method public abstract b()I
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/snapchat/android/model/Mediabryo;->mRawImageBitmap:Landroid/graphics/Bitmap;

    .line 140
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 29
    check-cast p1, Lcom/snapchat/android/model/Mediabryo;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/model/Mediabryo;->a(Lcom/snapchat/android/model/Mediabryo;)I

    move-result v0

    return v0
.end method

.method public abstract d()[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/snapchat/android/model/Mediabryo;->mRetried:Z

    .line 256
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 220
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    .line 223
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/Mediabryo;

    if-nez v0, :cond_1

    .line 224
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :cond_1
    check-cast p1, Lcom/snapchat/android/model/Mediabryo;

    .line 229
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    iget-object v1, p1, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/snapchat/android/model/Mediabryo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 4
    .parameter
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 103
    if-nez p1, :cond_1

    .line 112
    :cond_0
    return-void

    .line 104
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "\\s*,\\s*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v1

    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    invoke-static {v0, v1}, Lcom/snapchat/android/util/FriendUtils;->a(Ljava/lang/String;Lcom/snapchat/android/model/User;)Lcom/snapchat/android/model/Friend;

    move-result-object v0

    .line 110
    iget-object v3, p0, Lcom/snapchat/android/model/Mediabryo;->mRecipients:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
