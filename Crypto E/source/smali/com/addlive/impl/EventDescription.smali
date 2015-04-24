.class Lcom/addlive/impl/EventDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public eventConstructor:Ljava/lang/reflect/Constructor;

.field public handlerMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p1, p0, Lcom/addlive/impl/EventDescription;->handlerMethod:Ljava/lang/reflect/Method;

    .line 756
    iput-object p2, p0, Lcom/addlive/impl/EventDescription;->eventConstructor:Ljava/lang/reflect/Constructor;

    .line 757
    return-void
.end method
