.class public Lorg/anddev/andengine/util/SmartList;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x73af5f76cfc5be46L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public call(Lorg/anddev/andengine/util/IMatcher;Lorg/anddev/andengine/util/ParameterCallable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/IMatcher",
            "<TT;>;",
            "Lorg/anddev/andengine/util/ParameterCallable",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/anddev/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2, v1}, Lorg/anddev/andengine/util/ParameterCallable;->call(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public call(Lorg/anddev/andengine/util/ParameterCallable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/ParameterCallable",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/anddev/andengine/util/ParameterCallable;->call(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public clear(Lorg/anddev/andengine/util/ParameterCallable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/ParameterCallable",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/anddev/andengine/util/ParameterCallable;->call(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public find(Lorg/anddev/andengine/util/IMatcher;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/IMatcher",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/anddev/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public remove(Lorg/anddev/andengine/util/IMatcher;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/IMatcher",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/anddev/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public remove(Lorg/anddev/andengine/util/IMatcher;Lorg/anddev/andengine/util/ParameterCallable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/IMatcher",
            "<TT;>;",
            "Lorg/anddev/andengine/util/ParameterCallable",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/anddev/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/anddev/andengine/util/ParameterCallable;->call(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Lorg/anddev/andengine/util/ParameterCallable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/anddev/andengine/util/ParameterCallable",
            "<TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/SmartList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Lorg/anddev/andengine/util/ParameterCallable;->call(Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method public removeAll(Lorg/anddev/andengine/util/IMatcher;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/IMatcher",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_0
    if-gez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/anddev/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/util/SmartList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public removeAll(Lorg/anddev/andengine/util/IMatcher;Lorg/anddev/andengine/util/ParameterCallable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/IMatcher",
            "<TT;>;",
            "Lorg/anddev/andengine/util/ParameterCallable",
            "<TT;>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_0
    if-gez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/anddev/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/util/SmartList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/anddev/andengine/util/ParameterCallable;->call(Ljava/lang/Object;)V

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
