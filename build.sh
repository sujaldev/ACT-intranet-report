create_deployment
update_deployment in_progress "https://pdf.sujal.dev/act/report.pdf"

# Setup virtualenv for pygments
pip3 install virtualenv && virtualenv venv
source venv/bin/activate
pip install Pygments

# Build PDF
mkdir -p ./build/act
cd src/ || exit
pdflatex -interaction=nonstopmode -output-format=pdf -output-directory=../build/act -shell-escape ./report.tex
cd ../build/act || exit

# Clean up build files
find ./* ! -name "report.pdf" -delete

# Build Preview Images
pdftoppm report.pdf preview -png

clear_image_cache
update_deployment success
