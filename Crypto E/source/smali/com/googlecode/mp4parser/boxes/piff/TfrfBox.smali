.class public Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;
    }
.end annotation


# static fields
.field private static final synthetic b:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic c:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic d:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1
    invoke-static {}, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "uuid"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->a:Ljava/util/List;

    .line 43
    return-void
.end method

.method private static synthetic a()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "TfrfBox.java"

    const-class v2, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getFragmentCount"

    const-string v3, "com.googlecode.mp4parser.boxes.piff.TfrfBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "long"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->b:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "getEntries"

    const-string v3, "com.googlecode.mp4parser.boxes.piff.TfrfBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.util.List"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->c:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "toString"

    const-string v3, "com.googlecode.mp4parser.boxes.piff.TfrfBox"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "java.lang.String"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->a(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 6
    .parameter

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->c(Ljava/nio/ByteBuffer;)J

    .line 75
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->f(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 77
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 88
    return-void

    .line 78
    :cond_0
    new-instance v2, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;

    invoke-direct {v2, p0}, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;-><init>(Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;)V

    .line 79
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->q()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 80
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->h(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->a:J

    .line 81
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->h(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->b:J

    .line 86
    :goto_1
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->a:J

    .line 84
    invoke-static {p1}, Lcom/coremedia/iso/IsoTypeReader;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->b:J

    goto :goto_1
.end method

.method protected b(Ljava/nio/ByteBuffer;)V
    .locals 4
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->d(Ljava/nio/ByteBuffer;)V

    .line 59
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coremedia/iso/IsoTypeWriter;->d(Ljava/nio/ByteBuffer;I)V

    .line 61
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 61
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;

    .line 62
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->q()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 63
    iget-wide v2, v0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->a:J

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->a(Ljava/nio/ByteBuffer;J)V

    .line 64
    iget-wide v2, v0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->b:J

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->a(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 66
    :cond_1
    iget-wide v2, v0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->a:J

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;J)V

    .line 67
    iget-wide v2, v0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox$Entry;->b:J

    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/IsoTypeWriter;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_0
.end method

.method protected d()J
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->q()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/16 v0, 0x10

    :goto_0
    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public o()[B
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x1
        0xd4t
        0x80t
        0x7et
        0xf2t
        0xcat
        0x39t
        0x46t
        0x95t
        0x8et
        0x54t
        0x26t
        0xcbt
        0x9et
        0x46t
        0xa7t
        0x9ft
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    sget-object v0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->d:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->a(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->a()Lcom/googlecode/mp4parser/RequiresParseDetailAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/RequiresParseDetailAspect;->a(Lorg/aspectj/lang/JoinPoint;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v1, "TfrfBox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "{entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/piff/TfrfBox;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method