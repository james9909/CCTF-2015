.class public final enum Lcom/snapchat/android/database/table/FriendTable$FriendSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/database/table/FriendTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendSchema"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/table/FriendTable$FriendSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum b:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum c:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum d:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum e:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum f:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum g:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum h:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum i:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum j:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum k:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum l:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum m:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum n:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum o:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum p:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum q:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum r:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum s:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum t:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum u:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field public static final enum v:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

.field private static final synthetic z:[Lcom/snapchat/android/database/table/FriendTable$FriendSchema;


# instance fields
.field private w:I

.field private x:Ljava/lang/String;

.field private y:Lcom/snapchat/android/database/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 170
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "USERNAME"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Username"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->a:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 172
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "DISPLAY_NAME"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "DisplayName"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 174
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "PHONE_NUMBER"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "PhoneNumber"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->c:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 176
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "BEST_FRIEND_INDEX"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-string v4, "BestFriendIndex"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->d:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 178
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_BLOCKED"

    const/4 v2, 0x4

    const/4 v3, 0x5

    const-string v4, "IsBlocked"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->e:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 180
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_PENDING"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const-string v4, "IsPending"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->f:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 182
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_DUPLICATE_DISPLAY_NAME"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "IsDuplicateDisplayName"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->g:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 184
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_ADDED_AS_FRIEND"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "isAddedAsFriend"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->h:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 186
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "ADDED_ME_TIMESTAMP"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "AddedMeTimestamp"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->i:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 188
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "ADDED_THEM_TIMESTAMP"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "AddedThemTimestamp"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->j:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 190
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_SHARED_STORY"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "IsSharedStory"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->k:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 192
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "SHARED_STORY_ID"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "SharedStoryId"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->l:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 194
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "SHOULD_FETCH_CUSTOM_DESCRIPTION"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const-string v4, "ShouldFetchCustomDescription"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->m:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 196
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "CUSTOM_TITLE"

    const/16 v2, 0xd

    const/16 v3, 0xe

    const-string v4, "CustomTitle"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->n:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 198
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "CUSTOM_DESCRIPTION"

    const/16 v2, 0xe

    const/16 v3, 0xf

    const-string v4, "CustomDescription"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->o:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 200
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_LOCAL_STORY"

    const/16 v2, 0xf

    const/16 v3, 0x10

    const-string v4, "IsLocalStory"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->p:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 202
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "CASH_ELIGIBILITY"

    const/16 v2, 0x10

    const/16 v3, 0x11

    const-string v4, "CashEligibility"

    sget-object v5, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->q:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 204
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_IGNORED"

    const/16 v2, 0x11

    const/16 v3, 0x12

    const-string v4, "IsIgnored"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->r:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 206
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "IS_HIDDEN"

    const/16 v2, 0x12

    const/16 v3, 0x13

    const-string v4, "IsHidden"

    sget-object v5, Lcom/snapchat/android/database/DataType;->d:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->s:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 208
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "DIRECTION"

    const/16 v2, 0x13

    const/16 v3, 0x14

    const-string v4, "Direction"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->t:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 210
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "ADD_SOURCE"

    const/16 v2, 0x14

    const/16 v3, 0x15

    const-string v4, "AddSource"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->u:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 212
    new-instance v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const-string v1, "ADD_SOURCE_TYPE"

    const/16 v2, 0x15

    const/16 v3, 0x16

    const-string v4, "AddSourceType"

    sget-object v5, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->v:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    .line 168
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    const/4 v1, 0x0

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->a:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->b:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->c:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->d:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->e:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->f:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->g:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->h:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->i:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->j:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->k:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->l:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->m:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->n:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->o:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->p:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->q:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->r:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->s:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->t:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->u:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->v:Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->z:[Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/snapchat/android/database/DataType;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/database/DataType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 221
    iput p3, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->w:I

    .line 222
    iput-object p4, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->x:Ljava/lang/String;

    .line 223
    iput-object p5, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->y:Lcom/snapchat/android/database/DataType;

    .line 224
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/database/table/FriendTable$FriendSchema;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/database/table/FriendTable$FriendSchema;)Lcom/snapchat/android/database/DataType;
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->y:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/table/FriendTable$FriendSchema;
    .locals 1
    .parameter

    .prologue
    .line 168
    const-class v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/table/FriendTable$FriendSchema;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->z:[Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/table/FriendTable$FriendSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->y:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->w:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/snapchat/android/database/table/FriendTable$FriendSchema;->x:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method
