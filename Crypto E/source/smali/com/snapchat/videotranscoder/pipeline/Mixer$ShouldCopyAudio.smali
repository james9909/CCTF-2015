.class public final enum Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/videotranscoder/pipeline/Mixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShouldCopyAudio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

.field public static final enum b:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

.field private static final synthetic c:[Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    const-string v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    .line 41
    new-instance v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    const-string v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;->b:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    sget-object v1, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;->a:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;->b:Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;->c:[Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;
    .locals 1
    .parameter

    .prologue
    .line 39
    const-class v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;->c:[Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    invoke-virtual {v0}, [Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/videotranscoder/pipeline/Mixer$ShouldCopyAudio;

    return-object v0
.end method
