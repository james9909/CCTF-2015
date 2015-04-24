.class public final enum Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

.field public static final enum b:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

.field public static final enum c:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

.field public static final enum d:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

.field public static final enum e:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

.field public static final enum f:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

.field private static final synthetic g:[Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    new-instance v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->a:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    .line 110
    new-instance v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->b:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    .line 111
    new-instance v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->c:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    .line 112
    new-instance v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    const-string v1, "FAILED_SNAPS_NOT_ALL_LOADED"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->d:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    .line 113
    new-instance v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    const-string v1, "FAILED_DURING_INITIALIZATION"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->e:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    .line 114
    new-instance v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    const-string v1, "FAILED_DURING_TRANSCODING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->f:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    .line 108
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    sget-object v1, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->a:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->b:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->c:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->d:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->e:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->f:Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->g:[Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

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
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;
    .locals 1
    .parameter

    .prologue
    .line 108
    const-class v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->g:[Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/cache/SaveStoryToGalleryTask$Result;

    return-object v0
.end method
