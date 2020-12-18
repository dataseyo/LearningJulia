### A Pluto.jl notebook ###
# v0.12.17

using Markdown
using InteractiveUtils

# ╔═╡ 9766fa10-3fde-11eb-03cd-ad4c35924780
begin
	using Images
	pupper = load("pupper2.png")
end

# ╔═╡ b7329582-3fdd-11eb-1cbb-6f2fd09daac6
url = "https://i.imgur.com/2a2eZyq.png"

# ╔═╡ 15a6e1c0-3fde-11eb-2b90-c795bf53b5e9
download(url, "pupper2.png")


# ╔═╡ 1d1d79e0-3fdf-11eb-2d07-8b07da751d22
typeof(pupper)

# ╔═╡ 36502110-3fdf-11eb-07ee-e7152ef9d57f
size(pupper)

# ╔═╡ 84f94e40-3fdf-11eb-1c5c-f154b6199c28
pupper[111, 222] # selects one particular pixel

# ╔═╡ a88d46e0-3fdf-11eb-0c21-2511ebd2a0f8
pupper[160:280, 1:400]

# ╔═╡ 1723ef60-3fdf-11eb-0fcb-05afc683454d
# Note: if we type in LaTeX, like \div, and then press tab, then: 
÷ 
∇ # \nabla + tab
∫ # \int

# also, if you type \ and then tab it'll show a slider of various available LaTeX symbol commands

# ╔═╡ f6cad670-3fde-11eb-0abf-61974f808a48
RGBX(.01, .1, .023)

# ╔═╡ e5d86380-3fe0-11eb-30e0-01470535ea4b
# concatenate arrays
[pupper pupper]

# ╔═╡ 2c7db73e-3fe1-11eb-2cf9-312e9526166b
[pupper pupper
	pupper pupper]

# ╔═╡ 35561ec0-3fe1-11eb-1c78-f1ab3465c869
[pupper reverse(pupper, dims=2)
reverse(pupper, dims=1) reverse(reverse(pupper, dims=1), dims=2)]

# ╔═╡ b0117e1e-3fe1-11eb-1264-cd5502707a46
# manipulating images
new_pupper = copy(pupper)

# ╔═╡ cf9e6d70-3fe1-11eb-117e-6d00a9e3a779
red = RGB(1, 0, 0)

# ╔═╡ dabd4280-3fe1-11eb-0e65-6d10ee286988
for i in 1:100
	for j in 1:100
		new_pupper[i, j] = red
	end
end

# ╔═╡ f6e1d97e-3fe1-11eb-3888-1ffdf4c1a413
new_pupper

# ╔═╡ 11beae40-3fe2-11eb-0de2-b53b1fff6035
# easier method
begin
	new_pupper2 = copy(pupper)
	new_pupper2[100:400, 1:200] .= RGB(0, 1, 0) # . is saying operation will apply to each elements of arrary individually 
	new_pupper2
end

# ╔═╡ 2231145e-3fe3-11eb-1d2a-53ab85a3e4d3
function redify(color)
	return RGB(color.r, 0, 0)
end

# ╔═╡ aade17e0-3fe3-11eb-3183-afb7d2c38f0a
begin
	color = RGB(0.8, 0.75, .9)
	
	[color, redify(color)]
end

# ╔═╡ cf796e60-3fe3-11eb-089c-6f8263ce54d4
begin
	[pupper, redify.(pupper)] 
end

# ╔═╡ 294f5350-3fe4-11eb-0837-d5f6572b4c8e
fill(redify.(pupper), 3, 3)

# ╔═╡ Cell order:
# ╠═b7329582-3fdd-11eb-1cbb-6f2fd09daac6
# ╠═15a6e1c0-3fde-11eb-2b90-c795bf53b5e9
# ╠═9766fa10-3fde-11eb-03cd-ad4c35924780
# ╠═1d1d79e0-3fdf-11eb-2d07-8b07da751d22
# ╠═36502110-3fdf-11eb-07ee-e7152ef9d57f
# ╠═84f94e40-3fdf-11eb-1c5c-f154b6199c28
# ╠═a88d46e0-3fdf-11eb-0c21-2511ebd2a0f8
# ╠═1723ef60-3fdf-11eb-0fcb-05afc683454d
# ╠═f6cad670-3fde-11eb-0abf-61974f808a48
# ╠═e5d86380-3fe0-11eb-30e0-01470535ea4b
# ╠═2c7db73e-3fe1-11eb-2cf9-312e9526166b
# ╠═35561ec0-3fe1-11eb-1c78-f1ab3465c869
# ╠═b0117e1e-3fe1-11eb-1264-cd5502707a46
# ╠═cf9e6d70-3fe1-11eb-117e-6d00a9e3a779
# ╠═dabd4280-3fe1-11eb-0e65-6d10ee286988
# ╠═f6e1d97e-3fe1-11eb-3888-1ffdf4c1a413
# ╠═11beae40-3fe2-11eb-0de2-b53b1fff6035
# ╠═2231145e-3fe3-11eb-1d2a-53ab85a3e4d3
# ╠═aade17e0-3fe3-11eb-3183-afb7d2c38f0a
# ╠═cf796e60-3fe3-11eb-089c-6f8263ce54d4
# ╠═294f5350-3fe4-11eb-0837-d5f6572b4c8e
