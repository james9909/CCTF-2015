.class public final enum Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreviewQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

.field public static final enum b:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

.field private static final synthetic c:[Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->a:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    new-instance v0, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->b:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    sget-object v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->a:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->b:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->c:[Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->c:[Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    return-object v0
.end method
