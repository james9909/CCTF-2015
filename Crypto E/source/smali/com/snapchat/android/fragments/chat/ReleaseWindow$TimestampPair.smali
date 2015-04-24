.class Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/chat/ReleaseWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimestampPair"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field final synthetic c:Lcom/snapchat/android/fragments/chat/ReleaseWindow;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/chat/ReleaseWindow;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;->c:Lcom/snapchat/android/fragments/chat/ReleaseWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p2, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;->a:J

    .line 37
    iput-wide p4, p0, Lcom/snapchat/android/fragments/chat/ReleaseWindow$TimestampPair;->b:J

    .line 38
    return-void
.end method
