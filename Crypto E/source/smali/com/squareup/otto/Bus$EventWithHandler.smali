.class Lcom/squareup/otto/Bus$EventWithHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/otto/Bus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventWithHandler"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Lcom/squareup/otto/EventHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/squareup/otto/EventHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p1, p0, Lcom/squareup/otto/Bus$EventWithHandler;->a:Ljava/lang/Object;

    .line 472
    iput-object p2, p0, Lcom/squareup/otto/Bus$EventWithHandler;->b:Lcom/squareup/otto/EventHandler;

    .line 473
    return-void
.end method
