.class final Lcrittercism/android/ac$1;
.super Ljava/net/SocketImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/ac;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final accept(Ljava/net/SocketImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 711
    return-void
.end method

.method protected final available()I
    .locals 1

    .prologue
    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method protected final bind(Ljava/net/InetAddress;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 709
    return-void
.end method

.method protected final close()V
    .locals 0

    .prologue
    .line 708
    return-void
.end method

.method protected final connect(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 707
    return-void
.end method

.method protected final connect(Ljava/net/InetAddress;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 706
    return-void
.end method

.method protected final connect(Ljava/net/SocketAddress;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 705
    return-void
.end method

.method protected final create(Z)V
    .locals 0
    .parameter

    .prologue
    .line 704
    return-void
.end method

.method protected final getFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getLocalPort()I
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method public final getOption(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 699
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getPort()I
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method protected final listen(I)V
    .locals 0
    .parameter

    .prologue
    .line 701
    return-void
.end method

.method protected final sendUrgentData(I)V
    .locals 0
    .parameter

    .prologue
    .line 700
    return-void
.end method

.method public final setOption(ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 698
    return-void
.end method

.method protected final setPerformancePreferences(III)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 716
    return-void
.end method

.method protected final shutdownInput()V
    .locals 0

    .prologue
    .line 717
    return-void
.end method

.method protected final shutdownOutput()V
    .locals 0

    .prologue
    .line 718
    return-void
.end method

.method protected final supportsUrgentData()Z
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    return-object v0
.end method
