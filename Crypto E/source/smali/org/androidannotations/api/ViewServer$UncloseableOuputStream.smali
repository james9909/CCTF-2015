.class Lorg/androidannotations/api/ViewServer$UncloseableOuputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/androidannotations/api/ViewServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UncloseableOuputStream"
.end annotation


# instance fields
.field private final a:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 477
    iput-object p1, p0, Lorg/androidannotations/api/ViewServer$UncloseableOuputStream;->a:Ljava/io/OutputStream;

    .line 478
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 487
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer$UncloseableOuputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer$UncloseableOuputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 493
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer$UncloseableOuputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer$UncloseableOuputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 1
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer$UncloseableOuputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 518
    return-void
.end method

.method public write([B)V
    .locals 1
    .parameter

    .prologue
    .line 512
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer$UncloseableOuputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 513
    return-void
.end method

.method public write([BII)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    iget-object v0, p0, Lorg/androidannotations/api/ViewServer$UncloseableOuputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 508
    return-void
.end method