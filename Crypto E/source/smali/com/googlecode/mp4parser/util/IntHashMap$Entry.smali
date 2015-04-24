.class Lcom/googlecode/mp4parser/util/IntHashMap$Entry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/util/IntHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/Object;

.field d:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;


# direct methods
.method protected constructor <init>(IILjava/lang/Object;Lcom/googlecode/mp4parser/util/IntHashMap$Entry;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->a:I

    .line 83
    iput p2, p0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->b:I

    .line 84
    iput-object p3, p0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->c:Ljava/lang/Object;

    .line 85
    iput-object p4, p0, Lcom/googlecode/mp4parser/util/IntHashMap$Entry;->d:Lcom/googlecode/mp4parser/util/IntHashMap$Entry;

    .line 86
    return-void
.end method
