.class public final enum Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/BuildPieSliceTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoryThumbnailType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

.field public static final enum b:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

.field public static final enum c:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

.field private static final synthetic d:[Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    const-string v1, "ALL_SNAPS"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->a:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    .line 54
    new-instance v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    const-string v1, "SOME_SNAPS"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->b:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    .line 55
    new-instance v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    const-string v1, "OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->c:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    sget-object v1, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->a:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->b:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->c:Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->d:[Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;
    .locals 1
    .parameter

    .prologue
    .line 52
    const-class v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->d:[Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/BuildPieSliceTask$StoryThumbnailType;

    return-object v0
.end method
