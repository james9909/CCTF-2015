.class public Lcom/squareup/javawriter/JavaWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/javawriter/JavaWriter$Scope;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/squareup/javawriter/JavaWriter$Scope;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    const-string v0, "(?:[\\w$]+\\.)*([\\w\\.*$]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/squareup/javawriter/JavaWriter;->a:Ljava/util/regex/Pattern;

    .line 822
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->c:Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->d:Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->e:Lcom/squareup/javawriter/JavaWriter$Scope;

    sget-object v3, Lcom/squareup/javawriter/JavaWriter$Scope;->h:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/squareup/javawriter/JavaWriter;->c:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->b:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 797
    return-void
.end method
