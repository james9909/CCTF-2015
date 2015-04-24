.class Lcom/snapchat/android/util/debug/ManiphestAdapter$ManiphestCreationTask;
.super Lcom/snapchat/android/api2/framework/HyperRequestTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/debug/ManiphestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManiphestCreationTask"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/snapchat/android/api2/framework/HyperRequestTask;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$ManiphestCreationTask;->a:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$ManiphestCreationTask;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public m_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "https://basic-strata-577.appspot.com/maniphest/createTicketSecureWithEmailAllowsNoReportWithProject?token=T2hTbmFwY2hhdFBsZWFzZUxldE1lQmVQYXJ0T2ZZb3VySVBPU3RvY2tTZWxsaW5n"

    return-object v0
.end method
