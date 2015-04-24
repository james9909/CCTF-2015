.class Lcom/snapchat/android/model/User$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/model/User;->e(Ljava/util/List;)V
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
        "Lcom/snapchat/android/model/Friend;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/model/User;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Lcom/snapchat/android/model/User$4;->this$0:Lcom/snapchat/android/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 827
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->i()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->i()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 828
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/high16 v0, -0x8000

    .line 830
    :goto_0
    return v0

    .line 829
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    .line 830
    :cond_1
    long-to-int v0, v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 824
    check-cast p1, Lcom/snapchat/android/model/Friend;

    check-cast p2, Lcom/snapchat/android/model/Friend;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/model/User$4;->a(Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;)I

    move-result v0

    return v0
.end method
