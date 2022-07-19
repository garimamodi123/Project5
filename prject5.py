import click

@click.command()
def hello():
    click.echo("Hello World, my name is Garima Modi")
    
if __name__=='__main__':
    hello()