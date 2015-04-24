.class public final enum Lcom/snapchat/android/database/schema/StorySnapNoteSchema;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/database/schema/Schema;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/database/schema/StorySnapNoteSchema;",
        ">;",
        "Lcom/snapchat/android/database/schema/Schema;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

.field public static final enum b:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

.field public static final enum c:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

.field public static final enum d:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

.field public static final enum e:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

.field public static final enum f:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

.field private static final synthetic j:[Lcom/snapchat/android/database/schema/StorySnapNoteSchema;


# instance fields
.field private g:Ljava/lang/String;

.field private h:Lcom/snapchat/android/database/DataType;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10
    new-instance v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    const-string v1, "STORY_SNAP_ID"

    const-string v2, "StorySnapId"

    sget-object v3, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->a:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    .line 11
    new-instance v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    const-string v1, "VIEWER"

    const-string v2, "Viewer"

    sget-object v3, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->b:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    .line 12
    new-instance v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    const-string v1, "SCREENSHOTTED"

    const-string v2, "Screenshotted"

    sget-object v3, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->c:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    .line 13
    new-instance v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    const-string v1, "TIMESTAMP"

    const-string v2, "Timestamp"

    sget-object v3, Lcom/snapchat/android/database/DataType;->b:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->d:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    .line 14
    new-instance v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    const-string v1, "STORY_POINTER_KEY"

    const-string v2, "StoryPointerKey"

    sget-object v3, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->e:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    .line 15
    new-instance v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    const-string v1, "STORY_POINTER_FIELD"

    const/4 v2, 0x5

    const-string v3, "StoryPointerField"

    sget-object v4, Lcom/snapchat/android/database/DataType;->a:Lcom/snapchat/android/database/DataType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V

    sput-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->f:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    sget-object v1, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->a:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->b:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->c:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->d:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    aput-object v1, v0, v8

    sget-object v1, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->e:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->f:Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->j:[Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/snapchat/android/database/DataType;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/snapchat/android/database/DataType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->g:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->h:Lcom/snapchat/android/database/DataType;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/database/schema/StorySnapNoteSchema;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/database/schema/StorySnapNoteSchema;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->j:[Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    invoke-virtual {v0}, [Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/database/schema/StorySnapNoteSchema;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/snapchat/android/database/DataType;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->h:Lcom/snapchat/android/database/DataType;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->ordinal()I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/snapchat/android/database/schema/StorySnapNoteSchema;->i:Ljava/lang/String;

    return-object v0
.end method
