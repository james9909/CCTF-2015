.class Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/snapchat/android/util/Resolution;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;


# direct methods
.method constructor <init>(Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder$1;->a:Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/util/Resolution;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-virtual {p2}, Lcom/snapchat/android/util/Resolution;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/snapchat/android/util/Resolution;->d()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    check-cast p1, Lcom/snapchat/android/util/Resolution;

    check-cast p2, Lcom/snapchat/android/util/Resolution;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/camera/previewsize/VideoRecordingSizeFinder$1;->a(Lcom/snapchat/android/util/Resolution;Lcom/snapchat/android/util/Resolution;)I

    move-result v0

    return v0
.end method
