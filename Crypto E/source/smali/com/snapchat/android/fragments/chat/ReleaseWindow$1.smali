.class Lcom/snapchat/android/fragments/chat/ReleaseWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ReleaseWindow;
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
        "Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/chat/ReleaseWindow;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/chat/ReleaseWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow$1;->a:Lcom/snapchat/android/fragments/chat/ReleaseWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 55
    iget-wide v0, p1, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;->b:J

    iget-wide v2, p2, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;->b:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    check-cast p1, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;

    check-cast p2, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/fragments/chat/ReleaseWindow$1;->a(Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;)I

    move-result v0

    return v0
.end method
